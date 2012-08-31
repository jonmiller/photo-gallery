FactoryGirl.define do
  factory :image do
    name "Image Name"
    file { File.open("#{Rails.root}/test/fixtures/files/forest.jpg") }
  end
end
