class CreateArtefacts < ActiveRecord::Migration[5.0]
  def change
    create_table :artefacts do |t|
      t.string :image_url
      t.string :name
      t.text :description
      t.integer :number
      t.string :material
      t.string :technique
      t.string :type 
      t.references :location
      t.references :country
      t.references :gallery 
      t.timestamps
    end
  end
end
