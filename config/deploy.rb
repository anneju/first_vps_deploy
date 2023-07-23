# config valid for current version and patch releases of Capistrano
lock '~> 3.17.3'

set :application, 'first_vps_deploy'
set :repo_url, 'git@github.com:anneju/first_vps_deploy.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, 'config/database.yml', 'config/master.key', 'config/secrets.yml'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'tmp/webpacker', 'public/system', 'vendor', 'storage', 'node_modules', 'public/shared', 'public/uploads'

# Default value for default_env is {}
set :default_env, {
  'PATH' => "/usr/pgsql-11/bin:/usr/local/passenger/passenger-6.0.18/bin:$PATH",
  'LD_LIBRARY_PATH' => "/usr/pgsql-11/lib:$LD_LIBRARY_PATH"
}

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

# 確保 Capistrano 可以正確訪問到 passenger
set :passenger_cmd, '/usr/local/passenger/passenger-6.0.18/bin/passenger'
