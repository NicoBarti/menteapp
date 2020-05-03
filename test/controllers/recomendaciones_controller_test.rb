require 'test_helper'

class RecomendacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recomendacione = recomendaciones(:one)
  end

  test "should get index" do
    get recomendaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_recomendacione_url
    assert_response :success
  end

  test "should create recomendacione" do
    assert_difference('Recomendacione.count') do
      post recomendaciones_url, params: { recomendacione: {  } }
    end

    assert_redirected_to recomendacione_url(Recomendacione.last)
  end

  test "should show recomendacione" do
    get recomendacione_url(@recomendacione)
    assert_response :success
  end

  test "should get edit" do
    get edit_recomendacione_url(@recomendacione)
    assert_response :success
  end

  test "should update recomendacione" do
    patch recomendacione_url(@recomendacione), params: { recomendacione: {  } }
    assert_redirected_to recomendacione_url(@recomendacione)
  end

  test "should destroy recomendacione" do
    assert_difference('Recomendacione.count', -1) do
      delete recomendacione_url(@recomendacione)
    end

    assert_redirected_to recomendaciones_url
  end
end
