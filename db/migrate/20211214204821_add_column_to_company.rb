class AddColumnToCompany < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :assign_manager, :string
  end
end
