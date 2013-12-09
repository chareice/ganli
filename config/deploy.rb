set :application, 'ganli'

set :branch, "master"
set :repository, "git@github.com:chareice/ganli.git"
set :scm, "git"

set :user, "root"
set :deploy_to, '/rails/#{application}'
set :use_sudo, false

role :web, "ganli.chareice.com"
role :app, "ganli.chareice.com"
role :db,  "ganli.chareice.com", :primary => true
set :normalize_asset_timestamps, %{public/images public/javascripts public/stylesheets}
namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  after :finishing, 'deploy:cleanup'

end
