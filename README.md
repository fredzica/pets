# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Learning notes

## Rails command line
### To create the app
`rails new pets --webpack=react --database=postgresql -T`
### DB and models
- `rails db:create`
- `rails g model Pet name description birth_date:timestamp weight_kg:decimal{2-2}`
- `rails g model PetImage image_url taken_at:timestamp pet:belongs_to`
- `rails db:migrate`
