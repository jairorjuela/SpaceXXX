FactoryBot.define do
  factory :launch do
    article   { "https://spaceflightnow.com/2020/03/07/late-night-launch-of-spacex-cargo-ship-marks-end-of-an-era/" }
    video     { "https://youtu.be/1MkcWK2PnsU" }
    success   { true }
    name      { "CRS-20" }
    image     { "https://live.staticflickr.com/65535/49635401403_96f9c322dc_o.jpg" }

    association :user,    factory: :user
  end
end
