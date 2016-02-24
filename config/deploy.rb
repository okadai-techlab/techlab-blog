# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'techlab-blog'
set :repo_url, 'github-repo-blog:okadai-techlab/techlab-blog.git'

# Default branch
set :branch, 'master'

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/var/www/html/blog.okayama-u-techlab.com'

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :debug

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
set :default_env, { path: "/root/.anyenv/envs/rbenv/shims:/root/.anyenv/envs/rbenv/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

# whenever settings
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }

namespace :deploy do
end
