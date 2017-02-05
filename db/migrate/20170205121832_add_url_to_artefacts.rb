class AddUrlToArtefacts < ActiveRecord::Migration[5.0]
  def change
    add_column :artefacts, :url, :string
  end
end
