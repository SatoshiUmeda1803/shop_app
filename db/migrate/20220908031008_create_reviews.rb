class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name, null: false
      t.string :comment, null: false
      t.integer :rate, null: false

      t.timestamps
    end
  end
end
