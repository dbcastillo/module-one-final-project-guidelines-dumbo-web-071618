require 'bundler'
#require_relative '../api/data.rb'
#require_relative '../methods/functions.rb'
# require_relative '../db/migrations/01_create_users.rb'
# require_relative '../app/models/createusers.rb'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
require_all 'app'

ActiveRecord::Base.logger = nil
#set logger to false value so it doesn't show
