class AddCityAndCountryAndAddressToPurchases < ActiveRecord::Migration
  def change
  	add_column :purchases, :address, :string
  	add_column :purchases, :city, :string
  	add_column :purchases, :country, :string
  	add_column :purchases, :postal, :string
  end
end
