class AddCountryCodeToCountries < ActiveRecord::Migration[5.0]
  def change
    add_column :countries, :country_code, :string
  end
end
