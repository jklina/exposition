class AddSlugToExpositonPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :exposition_posts, :slug, :string

    add_index :exposition_posts, :slug, unique: true
  end
end
