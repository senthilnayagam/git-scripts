require 'grit'

if ARGV.size < 1
  puts 'usage: file-size FILE'
  puts 'run from within the git repo root'
  exit
end

filename = ARGV[0].to_s

repo = Grit::Repo.new('.')
puts 'file: ' + filename
branch = repo.head.name
puts 'branch: ' + branch
commits = repo.log(branch, filename)
commits.each do |commit|
  blob = commit.tree/filename
  puts "#{commit} #{blob.size} bytes #{commit.authored_date.strftime('%d/%m/%Y')} #{commit.committer}" # " #{commit.message}"
end