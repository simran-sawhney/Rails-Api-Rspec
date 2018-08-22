# frozen_string_literal: true

# spec/factories/users.rb

FactoryBot.define do
  factory :user do
    name { Faker::Name.unique.name }
    email { Faker::Internet.unique.email }
    password 'foobar'
  end
end
