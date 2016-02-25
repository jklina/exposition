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
<p>This is my content</p>
<pre>
<code>def ruby_method
  puts 'this is a ruby method'
end
</code>
</pre>
<p>Closing paragraph</p>
POST

Exposition::Post.create!(title: 'Test Title', author: author, body: post_content, published: true)
