# This migration comes from exposition (originally 20160112194424)
class AddAuthorIdToPosts < ActiveRecord::Migration
  def change
    add_column :exposition_posts, :author_id, :integer
  end
end
