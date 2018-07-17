class AddDescriptionToCountries < ActiveRecord::Migration[5.0]
  def change
    add_column :countries, :description, :text
  end
end
