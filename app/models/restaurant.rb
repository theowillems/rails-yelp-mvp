class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy


  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ["indian", "belgian", "asian", "chinese", "italian", "japanese", "french"], allow_nil: false }

end
