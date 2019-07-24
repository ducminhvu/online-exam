lock "~> 3.11.0"
set :rvm_ruby_version, "2.6.3"

set :application, "online_exam"
set :stage, "production"

set :repo_url, "git@github.com:ducminhvu/online-exam.git"
set :branch, "deploy"

set :deploy_to, "/home/ducvm/app/online_exam"

append :linked_files, "config/master.key", "config/application.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets",
  "vendor/bundle", ".bundle", "public/system", "public/uploads"

set :puma_conf, "#{shared_path}/config/puma.rb"
set :puma_workers, 1
set :puma_threads, [1, 2]

namespace :deploy do
  # uncomment for first time deploy or need to update environment variables
  before "check:linked_files", "upload_config"
end
