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

## Create Model

  1. `rails generate model Launch article:string video:string success:boolean name:string image:string`
  2. Add relation with user, one user has_one a launch

# Tiempo

  1. Documentación sobre las dos Apps -- 1hora
  2. Implementación App Github -- 30 min
  3. Creación del boilerplate con lo necesario para pruebas App SpaceX -- 1 hora
  4. Implementación App SpaceX --30 min
  5. Elegí SpaceX porque ya estaba corto de tiempo y no pude desarrollar la de GitHub

# Prolemas

  1. Fue complejo implementar lo de github por temas de autenticacion, para que cualquier usuario pueda logearse y aurtorizar, para manejar errores con ramas y PR
  2. Dejé ir el tiempo y me dejé llevar sin darme cuenta de la hora
  3. Al final ya estaba sobre el tiempo y no me dejó procesar de la manera más correcta
