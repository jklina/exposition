# This migration comes from exposition (originally 20160112202302)
class AddSlugToExpositonPosts < ActiveRecord::Migration
  def change
    add_column :exposition_posts, :slug, :string

    add_index :exposition_posts, :slug, unique: true
  end
end
