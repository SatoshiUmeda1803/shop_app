class Product < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :category
  
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true

  def avg_score
    unless self.reviews.empty?
      reviews.average(:rate).round(1)
    else
      '-'
    end
  end

  def count_reviews
    self.reviews.count
  end

end
