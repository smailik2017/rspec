require_relative 'lib/git_stats'

task :default => :commits

task :commits do
  g = GitStats.new
  puts g.count
end
