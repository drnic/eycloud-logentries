#
# Cookbook Name:: le
# Recipe:: restart
#

execute "le monitor" do
  command "nohup le monitor"
  action :run
end
