set :default_stage, "production"

require 'capistrano/ext/multistage'
require 'spacesuit/recipes/multistage_patch'
require 'spacesuit/recipes/common'
require 'mongrel_cluster/recipes_2'
#require 'config/recipes/monit'

set :application, "permatime-plugin-test-1"
set :rails_env, "production"
set :ssh_options, {:forward_agent => true}
set :use_sudo, false

default_run_options[:pty] = true
set :scm, "git"
set :branch, "master"
set :repository,  "git@github.com:red56/permatime-plugin-test-1.git"
set :keep_releases, 30
set :git_enable_submodules, 1
#set :scm_verbose, true # cause git is old (1.4) and doesn't understand -q switch

#set :rails_revision, '79f55de9c5e3ff1f8d9e767c5af21ba31be4cfba' # Fri Sep 19 09:06:35 2008 -0500  -   From master branch

namespace :deploy do
  task :migrate do
    puts "no migrate to do (no db!)"
  end
  task :migrations do
    puts "no migrations to do (no db!)"    
  end
end