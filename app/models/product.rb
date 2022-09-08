class Product < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :category
  
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true
end
