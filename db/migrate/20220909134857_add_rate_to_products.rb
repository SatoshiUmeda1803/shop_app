class AddRateToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :rate, :float
  end
end
