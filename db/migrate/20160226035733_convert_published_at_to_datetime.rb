class ConvertPublishedAtToDatetime < ActiveRecord::Migration
  def up
    change_column :exposition_posts, :published_at, :datetime
  end

  def down
    change_column :exposition_posts, :published_at, :date
  end
end
