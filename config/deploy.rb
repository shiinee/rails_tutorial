set :application, "sample_app"
set :scm, :git
set :repository,  "git://github.com/shiinee/rails_tutorial.git"

set :user, "herp"
set :use_sudo, true

role :web, "192.168.56.101"                          # Your HTTP server, Apache/etc
role :app, "192.168.56.101"                          # This may be the same as your `Web` server
role :db,  "192.168.56.101", :primary => true # This is where Rails migrations will run
set :deploy_to, "/var/www"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
