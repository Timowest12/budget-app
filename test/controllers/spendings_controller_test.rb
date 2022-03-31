require 'test_helper'

class SpendingsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get spendings_new_url
    assert_response :success
  end

  test 'should get create' do
    get spendings_create_url
    assert_response :success
  end

  test 'should get destroy' do
    get spendings_destroy_url
    assert_response :success
  end
end
