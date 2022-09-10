class Tag < ApplicationRecord
  has_many :review_tag_relations, dependent: :destroy
  has_many :reviews, through: :review_tag_relations, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
