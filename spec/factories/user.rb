FactoryBot.define do
  factory :user do
    email      { Faker::Internet.email(separators: %w(_ -)) }
    password   { Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true) } #=> "*%NkOnJsH4"
  end
end
