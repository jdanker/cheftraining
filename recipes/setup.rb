package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'vim'

package 'ntp' do
  action :install
end

file '/etc/motd' do
  content 'This server is the property of Jahred' 
  owner 'root'
  group 'root'
end 

service 'ntpd' do
  action [ :enable, :start]
end
