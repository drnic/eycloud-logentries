
# Cookbook Name:: le
# Recipe:: start
#

# Start the le agent
execute 'start le agent' do
	command %{/etc/init.d/logentries start}
end
