# frozen_string_literal: true

# spec/factories/todos.rb
FactoryBot.define do
  factory :todo do
    title { Faker::Lorem.unique.word }
    created_by { Faker::Number.number(10) }
  end
end
