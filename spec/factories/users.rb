# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'test@selfhouse.local' }
    first_name { 'Test' }
    last_name { 'User' }
    bio { 'This is a test user from the user factory' }
    password { 'password123' }
    password_confirmation { 'password123' }
  end
end
