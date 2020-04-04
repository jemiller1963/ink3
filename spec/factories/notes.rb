FactoryBot.define do
  factory :note do
    title { "MyString" }
    body { "MyText" }
    active { false }
    user { nil }
  end
end
