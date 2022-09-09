class AddReviewCountToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :review_count, :integer
  end
end
