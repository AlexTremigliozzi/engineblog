# Engineblog

A blog in a rails engine.

## Rails installation

In your application run

<pre>
rails g model User name:string
rake db:migrate
</pre>

Then add the Engineblog gem to your Gemfile

<pre>
gem 'engineblog', :git => 'git://github.com/AlexTremigliozzi/engineblog.git' 
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

Add a to_s method to the models/User.rb within the application:

<pre>
def to_s
  name
end
</pre>

Create a new initializer at config/initializers/engineblog.rb inside the application where the engine is installed and write this content in it:

<pre>
Engineblog.author_class = "User"
</pre>


Run the application with:

<pre>
localhost:3000/engineblog
</pre>



