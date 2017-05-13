class AddCarsCompanyForeignKeys < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :cars, :companies
  	add_foreign_key :companies, :cars
  	add_foreign_key :companies, :users
  	add_foreign_key :users, :companies
  end
end
