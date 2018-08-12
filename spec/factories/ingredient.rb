FactoryGirl.define do
  factory :ingredient, class: Ingredient do |p|
    p.name 'milk'
    p.measurement '300 ml'
  end
end
