class AddFinalToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :final, :decimal
  end
end
