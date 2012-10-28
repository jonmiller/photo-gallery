FactoryGirl.define do

  factory :image_forest, class: Image do
    name "Forest"
    file { File.open("#{Rails.root}/test/fixtures/files/forest.jpg") }
  end

  factory :image_flatirons, class: Image do
    name "Flatirons"
    file { File.open("#{Rails.root}/test/fixtures/files/flatirons.jpg") }
  end

end
