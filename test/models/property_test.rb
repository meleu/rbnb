require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  test 'cannot create property without a title' do
    property = Property.new(
      owner: users(:meleu)
    )

    refute property.save
    assert_equal ["can't be blank"], property.errors[:title]
  end

  test 'cannot create property without an owner' do
    property = Property.new(
      title: 'Cool House'
    )

    refute property.save
    assert_equal ['must exist'], property.errors[:owner]
  end
end
