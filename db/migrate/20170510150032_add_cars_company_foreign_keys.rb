class AddCarsCompanyForeignKeys < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :car, :company
  	add_foreign_key :company, :car
  end
end
