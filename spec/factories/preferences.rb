# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  # sequence(:random_string) {|n| LoremIpsum.generate }
  
  factory :preference do
    inputs [[0, 10],[0, 10],[0, 10],[0, 10]]
    type "integer"
    size 30
    sequence :title do |n| 
      "#{n}. complete the following"
    end
    operators ['add','subtract','multiply', 'divide']
  end
end
