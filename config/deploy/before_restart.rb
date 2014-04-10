on_app_master do
  # the following updates the crontab upon deployment
  run "cd #{config.release_path}; bundle exec whenever --set environment=#{config.framework_env} --update-crontab '#{config.app}_#{config.framework_env}'"
end

on_app_servers_and_utilities do
  # link redis.yml in current/config to shared/config
  run "ln -nfs #{config.shared_path}/config/redis.yml #{config.release_path}/config/redis.yml"
end