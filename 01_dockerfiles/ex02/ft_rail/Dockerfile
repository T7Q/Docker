FROM ruby:2.5.1

RUN apt-get update && apt-get install -y nodejs
RUN gem install rails --version 5.2.0 && gem install bundler
RUN mkdir -p /opt/app

COPY ./app /opt/app

ONBUILD WORKDIR /opt/app
ONBUILD RUN bundle install
ONBUILD RUN rake db:create
ONBUILD RUN rake db:migrate
ONBUILD RUN rake db:seed


# ------------------------------------------------------------------------------
# to build
#			<< docker build -t ft-rails:on-build . >>
#
# NOTES:
#
# Rails 	is a web application development framework written in the Ruby
#			programming language. It is designed to make programming web
#			applications easier by making assumptions about what every developer
#			needs to get started.
# Rails app	git clone https://github.com/RailsApps/rails-signup-thankyou.git app
# Rails 5.0.0 to 5.2.x Required Ruby Version 2.5.0 or later
#	 		https://edgeguides.rubyonrails.org/upgrading_ruby_on_rails.html
#			https://www.fastruby.io/blog/ruby/rails/versions/compatibility-table.html
# mkdir -p		* The -p flag will create nested directories.
# ONBUILD	instruction adds to the image a trigger instruction to be executed
#			at a later time, when the image is used as the base for another build. 
#			https://docs.docker.com/engine/reference/builder/
# WORKDIR	instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY
#			and ADD instructions that follow it in the Dockerfile.
# ONBUILD	instruction adds to the image a trigger instruction to be executed
#			at a later time, when the image is used as the base for another build.
# bundle install	* Install all of the required gems
# ONBUILD RUN rake  * Create your database, migrate and/or seed(sharing) it.
# 					  Deploy docker containers via Rake. This is especially useful
#					  for dockerized Ruby applications.
# Rake		is a utility built into Ruby and Rails, which provides an efficient way
#			for managing database changes:
#			rake db:create		* When you create your Rails application for the first time,
#								  it will not have a database yet. In order for it to start,
#								  you will need to make sure the database is up and running.
#			rake db:migrate		* Migrations setup the tables in the database. 
#								  When you run the migration command, it will look in 
#								  db/migrate/ for any ruby files and execute them starting with the oldest.
#			rake db:seed		* We always have default data that we want
#								  to have in our application for testing purposes.
#								  The seed command exists to automate this process
#			https://dev.to/neshaz/how-to-use-rake-db-commands-in-the-correct-way--50o2
# ------------------------------------------------------------------------------