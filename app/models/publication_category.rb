class PublicationCategory < ApplicationRecord
  validates :name, presence: true
  has_many :publication_sub_categories

  def subcats
    
  end
end
