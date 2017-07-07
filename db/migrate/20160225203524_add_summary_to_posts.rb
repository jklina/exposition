class AddSummaryToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :exposition_posts, :summary, :text
  end
end
