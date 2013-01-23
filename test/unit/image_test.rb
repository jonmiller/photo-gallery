require 'test_helper'

class ImageTest < ActiveSupport::TestCase

  test "create image" do
    image = FactoryGirl.build(:image_forest)
    assert image.save
    assert_not_nil image.file
    assert_not_nil image.file.url
    assert_equal image.file.identifier, "forest.jpg"
  end

end
