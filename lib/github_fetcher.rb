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
      'Last committed at',
      'By',
    ].to_csv

    github.repos(ORGANISATION)
    last_response = github.last_response
    until last_response.rels[:next].nil?
      repos = last_response.data
      repos.each do |repo|
        last_commit = last_commit(repo.full_name)
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
          last_commit[:date],
          last_commit[:name]
        ].to_csv
      end
      last_response = last_response.rels[:next].get
    end
  end

  private

  attr_reader :github

  def last_commit(repo)
    default = { name: 'Nobody', date: nil }
    head = github.commit(repo, 'HEAD')
    return default if head.nil?
    {
      name: head.commit.committer.name,
      date: head.commit.committer.date
    }
  rescue Octokit::Conflict
    default
  end
end
