# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "selfhouse"
set :repo_url, "git@github.com:selfhouse/selfhouse-web.git"

set :deploy_to, "/home/deploy/#{fetch :application}"

append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "vendor/bundle", ".bundle", "storage"

set :keep_releases, 5
