# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
author = Exposition::User.create!(
  name: 'Admin',
  email: 'admin@admin.admin',
  password: 'adminadmin', 
  password_confirmation: 'adminadmin'
)

post_content = <<-POST
Hello

This is a post.
POST

Exposition::Post.create!(title: 'Test Title', author: author, body: post_content, summary: post_content, published: true)
