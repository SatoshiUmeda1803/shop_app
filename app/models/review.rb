class Review < ApplicationRecord
  belongs_to :product
  has_many :review_tag_relations, dependent: :destroy
  has_many :tags, through: :review_tag_relations, dependent: :destroy

  validates :name, presence: true
  validates :comment, presence: true
  validates :rate, presence: true
  validates :price_rate, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates :design_rate, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates :quality_rate, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}

end
