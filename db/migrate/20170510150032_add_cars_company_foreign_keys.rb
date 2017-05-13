class AddCarsCompanyForeignKeys < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :cars, :company
  	add_foreign_key :company, :cars
  	add_foreign_key :company, :user
  	add_foreign_key :user, :company
  end
end
