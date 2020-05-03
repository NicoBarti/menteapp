require 'test_helper'

class AcercasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acerca = acercas(:one)
  end

  test "should get index" do
    get acercas_url
    assert_response :success
  end

  test "should get new" do
    get new_acerca_url
    assert_response :success
  end

  test "should create acerca" do
    assert_difference('Acerca.count') do
      post acercas_url, params: { acerca: {  } }
    end

    assert_redirected_to acerca_url(Acerca.last)
  end

  test "should show acerca" do
    get acerca_url(@acerca)
    assert_response :success
  end

  test "should get edit" do
    get edit_acerca_url(@acerca)
    assert_response :success
  end

  test "should update acerca" do
    patch acerca_url(@acerca), params: { acerca: {  } }
    assert_redirected_to acerca_url(@acerca)
  end

  test "should destroy acerca" do
    assert_difference('Acerca.count', -1) do
      delete acerca_url(@acerca)
    end

    assert_redirected_to acercas_url
  end
end
