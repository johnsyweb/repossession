libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require 'github_fetcher'

class Reposessor
  def self.list
    git = GithubFetcher.new
    git.list_repos
  end
end
