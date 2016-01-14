class AddTotalToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :total, :decimal
  end
end
