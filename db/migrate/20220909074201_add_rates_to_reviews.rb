class AddRatesToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :price_rate, :integer, null: false
    add_column :reviews, :design_rate, :integer, null: false
    add_column :reviews, :quality_rate, :integer, null: false
  end
end
