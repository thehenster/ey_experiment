on_app_master do
  # the following updates the crontab upon deployment
  run "cd #{config.release_path}; bundle exec whenever --set environment=#{config.framework_env} --update-crontab '#{config.app}_#{config.framework_env}'"
end