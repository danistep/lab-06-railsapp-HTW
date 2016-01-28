class AddPumpkinIdToPumpkins < ActiveRecord::Migration
  def change
    add_column :pumpkins, :pumpkin_id, :integer
  end
end
