# frozen_string_literal: true

class PublicationCategory < ApplicationRecord
  validates :name, presence: true
  has_many :publication_sub_categories, dependent: :destroy

  def subcats; end
end
