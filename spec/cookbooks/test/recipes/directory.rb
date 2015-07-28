# encoding: UTF-8

file '/etc/profile.d/lang.sh'

file 'we want to keep this' do
  path '/etc/profile.d/sub/keep.sh'
  action :nothing
end

zap_directory '/etc/profile.d' do
  pattern	node['directory']['pattern']
  recursive	node['directory']['recursive']
end

zap_directory "clean up SSH directories" do
  path '/home/*/.ssh'
end

file "keep linux torrent" do
  path "/data/downloads/linux-i-swear.torrent"
  action :nothing
end

link "/data/downloads/osx.torrent" do
  to "/data/downloads2/windows.torrent"
end

zap_directory "I like to keep things clean" do
  path '/data/downloads'
  manage_symlink_source true
end
