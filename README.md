# Engineblog

A blog in a rails engine.

## Rails installation

First add the Engineblog gem to your Gemfile

  <pre>
  gem 'engineblog' 
  </pre>

and run bundle

  <pre>
  bundle install
  </pre>

Then copy engineblog migrations to your project and execute them

  <pre>
  rake engineblog:install:migrations

  rake db:migrate
  </pre>

Add to config/routes.rb the string:

  <pre>
  mount Engineblog::Engine=>"/engineblog"
  </pre>


In your application run

  <pre>
  rails g model User name:string
  </pre>

Create a new initializer at config/initializers/engineblog.rb inside the application where the engine is installed and write this content in it:

  <pre>
  Engineblog.author_class = "User"
  </pre>


Run the application with URL:

  <pre>
  localhost:3000/engineblog
  </pre>



