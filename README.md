# Kawara

Blog media gem.
This project rocks and uses MIT-LICENSE.

# Features

## Article contents are written by Kramdown gem

## Images are handled by Refile gem

## Categories are managed by Awesome Nested Set gem

# Getting Started

Add kawara gem to your Gemfile.

`gem kawara`

Install kawara gem.

`bundle install`

Copy migration files.

`bin/rake kawara:install:migrations`

Run migrations.

`bin/rake db:migrate`

Load seed data.

`bin/rails runner 'Kawara::Engine.load_seed'`

Add route to kawara engine in your routes.rb.

`mount Kawara::Engine => '/blog'`
