ENV['SINATRA_ENV'] ||= "development"

#if ENV['SINATRA_ENV'] == "development"
#  require_relative "../secrets"
#end


require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

  require_all 'app'