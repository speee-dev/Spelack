FactoryGirl.define do
  factory :message do
    text FFaker::BaconIpsum.characters([*1..4000].sample)
    user_id 1
    channel_id 1
  end
end
