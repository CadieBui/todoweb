FactoryBot.define do
  factory :todolist do
    title {Faker::String.random(length: 4) }
    content {Faker::String.random(length: 3..12)}
  end
end