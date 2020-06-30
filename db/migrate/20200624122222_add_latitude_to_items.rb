class AddLatitudeToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :latitude, :float
  end
end
