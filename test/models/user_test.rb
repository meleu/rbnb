require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'cannot create user without a name' do
    user = user_no_name

    refute user.save
    assert_equal ["can't be blank"], user.errors[:name]
  end

  test 'cannot create user without an invalid email' do
    user = user_invalid_email

    refute user.save
    assert_equal ['is invalid'], user.errors[:email]
  end

  def user_no_name
    User.new(
      email: 'user@example.com',
      password: '123456'
    )
  end

  def user_invalid_email
    User.create(
      name: 'Anyname',
      email: 'invalid-email',
      password: '123456'
    )
  end
end
