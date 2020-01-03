FactoryBot.define do
  factory :post, class: Exposition::Post do
    sequence(:title) { |n| "Title#{n}" }
    body { "my post" }
    summary { "my summary" }
    association :author, factory: :user
  end
end
