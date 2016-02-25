Exposition
===========

This is a very boring blogging platform based on Rails geared toward Rails developers. It has very little in the way of frills and is designed to get up and running fast with an easy to understand codebase.

Its built as a Rails Engine and therefore should be easy to customize and extend as you see fit.

This might not be good for you if:
----------------------------------

* You have many contributors and need role based permissions
* If you need to track changes in articles
* Make extensive use of images

Features
--------

* Tagging
* Basic user authentication
* Markdown that support code snippets
* Basic slug management
* Built in support for static pages using thoughtbot's [High_Voltage](http://thoughtbot.github.io/high_voltage/ "High Voltage")

That's about it for now, though I'm sure features will evolve slowy as needs are recognized through use.

Requirements
------------

This application is currently tested on Rails 4, Ruby 2.2.2 and the PostgreSQL database.

Setup
-----

Configuration is the same as a typical installation of a Rails Engine

* Create new Rails App
* Include exposition gem by adding `gem 'exposition'` to your Gemfile
* Mount the engine by adding `mount Exposition::Engine, at: "/blog"` to the routes file. You can also mount the engine to your project's root by adding `mount Exposition::Engine, at: "/"` instead.
* Install the migrations by running rake exposition:install:migrations
* Run the migrations `rake db:migrate`
* Add an admin user by using the Rails console `Exposition::User.create!(name: 'Johnny Appleseed', email: 'johnny@appleseed.com', password: 'secret', password_confirmation: 'secret')`
* Set the values in the en.yml file to your liking

Customization
-------------

I have a very basic and boring starter theme in place. Feel free to make it your own, or use it. The project uses [thoughtbot's SASS libraries](http://bourbon.io/ "Bourbon").

* Frontend styles and markup are where you would expect them to be. So:
  * app/assets/stylesheets
  * app/views/layouts/application.html.haml
  * app/views

* Admin styles and markup are in the Admin namespace. So:
  * app/assets/stylesheets/admin
  * app/views/layouts/admin.html.haml
  * app/views/admin

### Static Pages
You can add static pages by using the high_voltage. Instructions can be found at the gem's [website](http://thoughtbot.github.io/high_voltage/ "High Voltage")

Deployment instructions
-----------------------

You can deploy the app however you like, but I like [Heroku](http://heroku.com "Heroku"). Especially their [hobby plan](https://www.heroku.com/pricing "Heroku Pricing"). To deploy on Heroku:

* `heroku create [your app name]`
* `git push heroku master`
* `heroku run rake db:setup`
* Create your admin user in the console.
  * `heroku run rails console`
  * `User.create(name: 'Your Name', email: 'your@email.com', password: 'secrect', password_confirmation: 'secret')`
* `heroku open`

Todo:
-----

* Figure out a clean and easy way to allow image uploads that doesn't complicate setup
* Add RSS support

Running the Test Suite
----------------------

`bin/rspec spec`

= Exposition

This project rocks and uses MIT-LICENSE.

