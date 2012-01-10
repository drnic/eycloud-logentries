#
# Cookbook Name:: le
# Recipe:: configure
#

execute "le register --user-key" do
  command "le register --user-key #{node[:le_user_key]}"
  action :run
end

follow_paths = [
  "/var/log/syslog",
  "/var/log/auth.log"
]
node.engineyard.apps.each_with_index do |app,index|
  follow_paths << "/var/log/nginx/#{app.name}.access.log"
end

follow_paths.each do |path|
  execute "le follow #{path}" do
    command "le follow #{path}"
    action :run
  end
end