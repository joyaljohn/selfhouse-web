FactoryBot.define do
  factory :publication do
    title { "MyString" }
    abstract { "MyText" }
    publication_sub_category { nil }
    user { nil }
  end
end
