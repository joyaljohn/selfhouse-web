class PublicationCategory < ApplicationRecord
  validates :name, presence: true
end
