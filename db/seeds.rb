# frozen_string_literal: true

# Test User
@user = User.new(first_name: "Test",
            last_name: "User",
            email: "test@test.com",
            password: "password",
            password_confirmation: "password")
@user.skip_confirmation!
@user.save!

# Parent Categories
cat_seed_file = YAML::load_file(Rails.root.join('db', 'category_seeds.yml'))
PublicationCategory.create!(cat_seed_file)

# Sub-Categories for Fiction
subcat_seed_file = YAML::load_file(Rails.root.join('db', 'subcategories', 'fiction.yml'))
subcat_seed_file.each do |s|
  PublicationSubCategory.create!(name: s["name"], publication_category: PublicationCategory.where(name: "Fiction").first)
end

# Sub-Categories for Non-Fiction
subcat_seed_file = YAML::load_file(Rails.root.join('db', 'subcategories', 'non-fiction.yml'))
subcat_seed_file.each do |s|
  PublicationSubCategory.create!(name: s["name"], publication_category: PublicationCategory.where(name: "Non-Fiction").first)
end

# Sub-Categories for Academia
subcat_seed_file = YAML::load_file(Rails.root.join('db', 'subcategories', 'academia.yml'))
subcat_seed_file.each do |s|
  PublicationSubCategory.create!(name: s["name"], publication_category: PublicationCategory.where(name: "Academia").first)
end

# Publications
publication_seed_file = YAML::load_file(Rails.root.join('db', 'publications.yml'))
28.times do
  publication_seed_file.each do |s|
    puts Publication.create!(title: s["title"], abstract: s["abstract"], publication_sub_category_id: rand(1..28), user: @user)
  end
end
