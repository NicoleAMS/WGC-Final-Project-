class AddDateToArtefacts < ActiveRecord::Migration[5.0]
  def change
    add_column :artefacts, :start_date, :integer
    add_column :artefacts, :end_date, :integer 
  end
end
