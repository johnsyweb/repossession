require 'octokit'
require 'csv'

class GithubFetcher
  ORGANISATION ||= ENV['GITHUB_ORG']

  def initialize
    @github = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])
    @github.user.login
  end

  def list_repos
    puts [
      'Private',
      'Full name',
      'Has Wiki?',
      'Open issues',
      'Watchers',
      'Fork?',
      'Fork count',
      'Language',
      'Created at',
      'Updated at',
      'By',
    ].to_csv

    github.repos(ORGANISATION)
    last_response = github.last_response
    until last_response.rels[:next].nil?
      repos = last_response.data
      repos.each do |repo|
        puts [
          repo.private,
          repo.full_name,
          repo.has_wiki,
          repo.open_issues_count,
          repo.watchers_count,
          repo.fork?,
          repo.forks_count,
          repo.language,
          repo.created_at,
          repo.updated_at,
          last_committer(repo.full_name)
        ].to_csv
      end
      last_response = last_response.rels[:next].get
    end
  end

  private

  attr_reader :github

  def last_committer(repo)
    head = github.commit(repo, 'HEAD')
    return 'Nobody' if head.nil?
    head.commit.committer.name
  rescue Octokit::Conflict
    'Nobody'
  end
end
