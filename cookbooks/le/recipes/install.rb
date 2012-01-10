#
# Cookbook Name:: le
# Recipe:: install
#

package 'dev-util/le' do
  version node[:le_version]
  action :install
end
