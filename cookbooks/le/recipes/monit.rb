# Author: Greg Blasko

remote_file "/usr/local/bin/le_monitor" do
	source "le_monitor.sh"
	owner "deploy"
	group "deploy"
	mode 0755
	backup false
	action :create
end

remote_file "/etc/monit.d/le.monitrc" do
	source "le.monitrc"
	owner "root"
	group "root"
	mode 0644
	backup false
	action :create
end
