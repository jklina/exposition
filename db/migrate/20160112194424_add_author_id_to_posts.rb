class AddAuthorIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :exposition_posts, :author_id, :integer
  end
end
