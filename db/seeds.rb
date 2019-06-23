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
PublicationCategory.create([
  { name: "Fiction/Novels" },
  { name: "Non-Fiction" },
  { name: "Academia" }
])

# Sub-Categories for Fiction
PublicationSubCategory.create([
  {name: "1", publication_category: PublicationCategory.where(name: "Fiction/Novels").first},
  {name: "2", publication_category: PublicationCategory.where(name: "Fiction/Novels").first},
  {name: "3", publication_category: PublicationCategory.where(name: "Fiction/Novels").first}
])

# Sub-Categories for Non-Fiction
PublicationSubCategory.create([
  {name: "1", publication_category: PublicationCategory.where(name: "Non-Fiction").first},
  {name: "2", publication_category: PublicationCategory.where(name: "Non-Fiction").first},
  {name: "3", publication_category: PublicationCategory.where(name: "Non-Fiction").first}
])

# Sub-Categories for Academia
PublicationSubCategory.create([
  {name: "1", publication_category: PublicationCategory.where(name: "Academia").first},
  {name: "2", publication_category: PublicationCategory.where(name: "Academia").first},
  {name: "3", publication_category: PublicationCategory.where(name: "Academia").first}
])
