# frozen_string_literal: true

class PublicationSubCategory < ApplicationRecord
  belongs_to :publication_category
  validates :name, presence: true
end
