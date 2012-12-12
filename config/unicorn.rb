app_path = "/home/jonm/projects/rails/images-rails"

working_directory "#{app_path}"
pid "#{app_path}/tmp/pids/unicorn.pid"
stderr_path "#{app_path}/log/unicorn.log"
stdout_path "#{app_path}/log/unicorn.log"

listen "/tmp/unicorn.images-rails.sock"
worker_processes 2
timeout 30
