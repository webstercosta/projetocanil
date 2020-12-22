require 'test_helper'

class RacasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raca = racas(:one)
  end

  test "should get index" do
    get racas_url
    assert_response :success
  end

  test "should get new" do
    get new_raca_url
    assert_response :success
  end

  test "should create raca" do
    assert_difference('Raca.count') do
      post racas_url, params: { raca: { nome: @raca.nome } }
    end

    assert_redirected_to raca_url(Raca.last)
  end

  test "should show raca" do
    get raca_url(@raca)
    assert_response :success
  end

  test "should get edit" do
    get edit_raca_url(@raca)
    assert_response :success
  end

  test "should update raca" do
    patch raca_url(@raca), params: { raca: { nome: @raca.nome } }
    assert_redirected_to raca_url(@raca)
  end

  test "should destroy raca" do
    assert_difference('Raca.count', -1) do
      delete raca_url(@raca)
    end

    assert_redirected_to racas_url
  end
end
