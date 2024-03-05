# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

# Load the SCM plugin appropriate to your project:
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

# Include tasks from other gems included in your Gemfile
#
require 'capistrano/rails'
require 'capistrano/rails/migrations'
require 'capistrano/rails/db'
require 'capistrano/rails/console'
require 'capistrano/bundler'
require 'capistrano/nginx'
require 'capistrano/rvm'
require 'capistrano/upload-config'

require 'capistrano/puma'
install_plugin Capistrano::Puma
install_plugin Capistrano::Puma::Nginx
install_plugin Capistrano::Puma::Systemd # cap production puma:systemd:config puma:systemd:enable

require 'capistrano/rails/assets'
require 'sshkit/sudo'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
