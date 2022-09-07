class Product < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
end
