set :application, "rubybranko"
set :repository, "git://github.com/marosh/rubybranko.git"

#set :repository, "git://git@github.com:marosh/rubybranko.git"
set :scm, "git"
set :user, "rubybranko"
set :branch, "master"
#set :password, "rubybranko"

role :web, "server3.railshosting.cz"
role :app, "server3.railshosting.cz"
role :db,  "server3.railshosting.cz", :primary => true

set :deploy_to, "/home/rubybranko/app/"




set :use_sudo, false

task :after_update_code, :roles => [:app, :db] do
  run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
end


namespace :deploy do
  task :start, :roles => :app do
  end
end

namespace :deploy do
  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end