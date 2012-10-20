require 'test_helper'

class ImageTest < ActiveSupport::TestCase

  test "create image" do

    image = FactoryGirl.build(:image)

    Rails.logger.debug "image (before save) = #{image}"
    Rails.logger.debug "image.file (before save) = #{image.file}"
    Rails.logger.debug "image.file.url (before save) = #{image.file.url}"
    Rails.logger.debug "image.file.store_dir (before save) = #{image.file.store_dir}"

    assert image.save

    assert_not_nil image.file
    assert_not_nil image.file.url
    assert_equal image.file.identifier, "forest.jpg"

  end

end
