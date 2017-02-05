class ChangeTypeNameInArtefacts < ActiveRecord::Migration[5.0]
  def change
     remove_column :artefacts, :type, :string
     add_column :artefacts, :artefact_type, :string 
  end
end
