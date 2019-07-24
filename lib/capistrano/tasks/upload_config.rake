namespace :deploy do
  desc "Transfer config files to shared/config"

  task :upload_config do
    on roles(:app) do
      upload! "config/application.production.yml", "#{shared_path}/config/application.yml"
      upload! "config/master.key", "#{shared_path}/config/master.key"
    end
  end
end
