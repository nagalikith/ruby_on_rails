FactoryBot.define do
  factory :donation do
    amount { 1.5 }
    date { "2021-03-29" }
    method { "MyText" }
    recurring { 1.5 }
    restricted { "MyText" }
  end
end
