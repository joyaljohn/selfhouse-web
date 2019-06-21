class Publication < ApplicationRecord
  belongs_to :publication_sub_category
  belongs_to :user
  has_one_attached :file
  validates :title, presence: true
  validates :file, presence: true
  validates :publication_sub_category, presence: true
end
