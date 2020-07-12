class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :message
      t.monetize :amount, currency: { present: false }
      t.timestamps
    end
  end
end
