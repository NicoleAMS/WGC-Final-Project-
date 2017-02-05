class AlterLatLongOfCountries < ActiveRecord::Migration[5.0]
  def change
    change_column :countries, :latitude, 'float USING CAST(latitude AS float)'
    change_column :countries, :longitude, 'float USING CAST(longitude AS float)'
    change_column :locations, :latitude, 'float USING CAST(latitude AS float)'
    change_column :locations, :longitude, 'float USING CAST(longitude AS float)'
  end
end

