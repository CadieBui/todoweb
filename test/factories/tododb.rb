FactoryBot.define do
  factory :tododb do
    title { Faker::Name.title }
    content { Faker::Lorem.word }
  end
end
