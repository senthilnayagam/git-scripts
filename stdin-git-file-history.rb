require 'grit'




repo = Grit::Repo.new('.')
puts  "total first last filename " 
$stdin.each_line do |line|
filename = line.strip
#print filename
#=begin
branch = repo.head.name
# puts 'file: ' + filename + ' branch: ' + branch
commits = repo.log(branch, filename)

=begin
puts "first commit: {commits.first.authored_date.strftime('%d/%m/%Y')  #{commits.first.committer}" 
puts "last commit: #{commits.last.authored_date.strftime('%d/%m/%Y')} #{commits.last.committer}" 
puts "total commits: #{commits.length}"
=end
#one line for sorting

puts "#{commits.length} #{commits.first.authored_date.strftime('%d/%m/%Y')}  #{commits.last.authored_date.strftime('%d/%m/%Y')} #{filename} "
=begin
commits.each do |commit|
  blob = commit.tree/filename
  puts "#{commit} #{blob.size} bytes #{commit.authored_date.strftime('%d/%m/%Y')} #{commit.committer}" # " #{commit.message}"
 
end
=end
#=end 



end