# https://api.github.com/repos/{smailik2017}/{rspec}/commits.
# https://api.github.com/repos/smailik2017/rspec/commits
# https://github.com/smailik2017/rspec

require 'open-uri'
require 'json'

class GitStats 
  SOURCE = 'https://api.github.com/repos/smailik2017/rspec/commits'
  attr_reader :gitstats
  
  def initialize(url = SOURCE)
    @gitstats = JSON.load(URI.open(url))
  end

  def count
    gitstats.length
  end

end