# SpaceXXX

This application is created with Rails 5.2.

## Prerequisites

  1. Ruby
  2. Ruby on Rails
  3. PostgreSQL

## Steps to create this application:

  1. Create the App = rails new spaceXXX -d=postgresql
  2. Create the Databases = rake db:create
  3. Test the Server = Rails s

## Add gems to Specs

  1. Add `gem 'rspec-rails'` to group :development, :test
  2. Add  `gem 'faker', '~> 2.11'`, `gem 'factory_bot_rails'` and `gem 'shoulda-matchers'` to group :test
  3. Run `rails generate rspec:install`
  4. Add to rails_helper.rb:
      ```
        config.include FactoryBot::Syntax::Methods
        config.include Shoulda::Matchers::ActiveModel,  type: :model
        config.include Shoulda::Matchers::ActiveRecord, type: :model
      ```

## Add Devise for Users.

  1. Add `gem 'devise'`
  2. Add generator `rails generate devise:install`
  3. Create the Model for Users
  4. Run `rails db:migrate`
