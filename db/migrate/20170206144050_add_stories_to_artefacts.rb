class AddStoriesToArtefacts < ActiveRecord::Migration[5.0]
  def change
    add_reference :artefacts, :story, index: true
  end
end
