# frozen_string_literal: true

FactoryBot.define do
  factory :publication_sub_category do
    name { 'MyString' }
    publication_category { nil }
  end
end
