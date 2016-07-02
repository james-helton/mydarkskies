FactoryGirl.define do
  factory :observation do
    title 'MyString'
    beginning '2016-06-29 22:50:15'
    duration 1
    body 'MyText'

    trait :with_hunted_object do
      after(:create) do |observation|
        observation.hunted_objects << create(:celestial_object)
      end
    end

    trait :with_found_object do
      after(:create) do |observation|
        observation.found_objects << create(:celestial_object)
      end
    end
  end
end
