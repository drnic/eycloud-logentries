#
# Cookbook Name:: le
# Recipe:: configure
#

execute "le register --user-key" do
  command "le register --user-key #{node[:le_user_key]}"
  action :run
end
