FactoryBot.define do
  factory :message do
    hangout { nil }
    user { nil }
    body { "MyText" }
  end
end
