class CreateExpositionPosters < ActiveRecord::Migration
  def change
    create_table :exposition_posts do |t|
      t.string :title
      t.text :body
      t.boolean :published, null: false, default: false
      t.date :published_at

      t.timestamps null: false
    end
  end
end
