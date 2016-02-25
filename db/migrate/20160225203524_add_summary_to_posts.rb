class AddSummaryToPosts < ActiveRecord::Migration
  def change
    add_column :exposition_posts, :summary, :text
  end
end
