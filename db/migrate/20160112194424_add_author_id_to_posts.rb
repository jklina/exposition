class AddAuthorIdToPosts < ActiveRecord::Migration
  def change
    add_column :exposition_posts, :author_id, :integer
  end
end
