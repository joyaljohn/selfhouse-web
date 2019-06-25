# frozen_string_literal: true

json.extract! publication, :id, :title, :abstract, :publication_sub_category_id, :user_id, :created_at, :updated_at
json.url publication_url(publication, format: :json)
