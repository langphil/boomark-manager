ENV['RACK_ENV'] = 'test'

require 'capybara/rspec'
require 'database_cleaner'
require 'simplecov'
require 'simplecov-console'
require 'features/web_helpers'

require File.join(File.dirname(__FILE__), '..', 'app/bookmark.rb')
require './app/models/link'

Capybara.app = BOOKMARK

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
