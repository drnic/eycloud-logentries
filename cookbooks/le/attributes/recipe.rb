le_version('0.8.15')
le_user_key('YOUR_ACCOUNT_KEY_GOES_HERE')
follow_paths = [
  "/var/log/syslog",
  "/var/log/auth.log"
]
(node[:applications] || []).each do |app_name, app_info|
  follow_paths << "/var/log/nginx/#{app_name}.access.log"
end
le_follow(follow_paths)
# TODO - get this from /data/*/current/
