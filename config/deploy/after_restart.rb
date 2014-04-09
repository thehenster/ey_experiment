on_utilities("sidekiq") do
  sudo "monit restart all -g ey_experiment_sidekiq"
end