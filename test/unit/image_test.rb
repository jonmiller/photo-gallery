require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    if defined?(CarrierWave)
      CarrierWave::Uploader::Base.descendants.each do |klass|
        next if klass.anonymous?
        klass.class_eval do
          def cache_dir
            "#{Rails.root}/test/temp/uploads/tmp"
          end

          def store_dir
            "#{Rails.root}/test/temp/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
          end
        end
      end
    end
  end

  test "create image" do

    image = FactoryGirl.build(:image)

    Rails.logger.debug "image (before save) = #{image}"
    Rails.logger.debug "image.file (before save) = #{image.file}"
    Rails.logger.debug "image.file.url (before save) = #{image.file.url}"
    Rails.logger.debug "image.file.store_dir (before save) = #{image.file.store_dir}"

    image.save

    assert_not_nil image.file
    assert_not_nil image.file.url
    assert_equal image.file.identifier, "forest.jpg"

  end

end
