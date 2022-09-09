class ChangeDataRateToReviews < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :rate, :float, null: false
  end
end
