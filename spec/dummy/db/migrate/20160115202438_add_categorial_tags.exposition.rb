# This migration comes from exposition (originally 20160112204019)
class AddCategorialTags < ActiveRecord::Migration
  def change
    create_table :categorical_tags do |t|
      t.string :label
      t.string :slug

      t.timestamps null: false

      t.index :label, unique: true
      t.index :slug, unique: true
    end
    create_table :categorical_taggings do |t|
      t.references :taggable, polymorphic: true, index: true
      t.integer :tag_id
    end
  end
end
