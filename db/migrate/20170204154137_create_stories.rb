class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :content
      t.references :gallery, index: true, foreign_key: true
      t.timestamps
    end
  end
end
