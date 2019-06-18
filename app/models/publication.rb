class Publication < ApplicationRecord
  belongs_to :publication_sub_category
  belongs_to :user
end
