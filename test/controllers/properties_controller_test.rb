require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:meleu_house)
  end

  test 'should get index' do
    get properties_url(@property)
    assert_response :success
  end

  test 'should get new' do
    skip
    get new_property_url
    assert_response :success
  end

  test 'should create property' do
    skip
    assert_difference('Property.count') do
      post properties_url, params: { property: {} }
    end

    assert_redirected_to property_url(Property.last)
  end

  test 'should show property' do
    skip
    get property_url(@property)
    assert_response :success
  end

  test 'should get edit' do
    skip
    get edit_property_url(@property)
    assert_response :success
  end

  test 'should update property' do
    skip
    patch property_url(@property), params: { property: {} }
    assert_redirected_to property_url(@property)
  end

  test 'should destroy property' do
    skip
    assert_difference('Property.count', -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
