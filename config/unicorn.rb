APP_ROOT =  File.expand_path("../..", __FILE__)

working_directory APP_ROOT
pid "#{APP_ROOT}/tmp/pids/unicorn.pid"
worker_processes 2

preload_app true

listen "/tmp/unicorn.sock"
timeout 30

stdout_path "#{APP_ROOT}/log/unicorn.log"
stderr_path "#{APP_ROOT}/log/unicorn.log"
