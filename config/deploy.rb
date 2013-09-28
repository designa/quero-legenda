require 'capistrano_colors'
require 'bundler/capistrano'

# Configurando o servidor
set :domain, "173.230.141.160"
set :application, "querolegenda.com.br"
set :user, "railsapps"
set :use_sudo, false
set :deploy_to, "/home/#{user}/#{application}"

# Configurando o repositório
server domain, :app, :web, :db, :primary => true
set :repository,  "git@bitbucket.org:jmscarpa/youtube-developer-day.git"
set :scm, :git
set :keep_releases, 5
ssh_options[:forward_agent] = true

# Hooks
after 'deploy' do  
  db.migrate
end

# Deploy tasks
namespace :deploy do
  task :start do
    run "sudo /etc/init.d/apache2 start"
  end

  task :stop do
    run "sudo /etc/init.d/apache2 stop"
  end

  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
    run "sudo /etc/init.d/apache2 restart"
  end
end

# Database tasks
namespace :db do
  task :drop do
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:drop"
  end

  task :create do
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:create"
  end

  task :migrate do
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:migrate"
  end

  task :seed do
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:seed"
  end

  task :reset do
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:drop"
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:create"
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:migrate"
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:seed"
  end
end
