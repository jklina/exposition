class ConvertPublishedAtToDatetime < ActiveRecord::Migration[5.1]
  def up
    change_column :exposition_posts, :published_at, :datetime
  end

  def down
    change_column :exposition_posts, :published_at, :date
  end
end
