class AddDateToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :start_time, :date
    add_column :orders, :end_time, :date
  end
end
