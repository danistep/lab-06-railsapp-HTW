FactoryGirl.define do
  factory :order do
    association :customer, factory: :customer
    placed_on { 3.days.ago}
    status :new
    price 13.0
  end
  factory :order_associated, class: Order do
    placed_on { 3.days.ago}
    status :waiting
    price 33.2 
     after (:create) do | order |
      create(:line_item_1, order: order)
      create(:line_item_2, order: order)
    end
  end

  factory :order1, class: Order do
    association :customer, factory: :track
    placed_on { 6.weeks.ago}
    status :new
     price 1.0
  end
  factory :order2, class: Order do
    association :customer, factory: :tick
    placed_on { 80.days.ago}
    status :new
     price 22.0
  end
  factory :order3, class: Order do
    association :customer, factory: :trick
    placed_on { 3.days.ago}
    status :new
     price 3.0
  end
end

