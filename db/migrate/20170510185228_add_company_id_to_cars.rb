class AddCompanyIdToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :company_id, :integer
  end
end
