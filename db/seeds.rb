# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Test User
User.create(first_name: "Test",
            last_name: "User",
            email: "test@test.com",
            password: "password",
            password_confirmation: "password")

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
