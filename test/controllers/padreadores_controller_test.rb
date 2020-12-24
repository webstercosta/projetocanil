require 'test_helper'

class PadreadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @padreador = padreadores(:one)
  end

  test "should get index" do
    get padreadores_url
    assert_response :success
  end

  test "should get new" do
    get new_padreador_url
    assert_response :success
  end

  test "should create padreador" do
    assert_difference('Padreador.count') do
      post padreadores_url, params: { padreador: { caracteristica_id: @padreador.caracteristica_id, data_nascimento: @padreador.data_nascimento, falecido: @padreador.falecido, nome: @padreador.nome, raca_id: @padreador.raca_id } }
    end

    assert_redirected_to padreador_url(Padreador.last)
  end

  test "should show padreador" do
    get padreador_url(@padreador)
    assert_response :success
  end

  test "should get edit" do
    get edit_padreador_url(@padreador)
    assert_response :success
  end

  test "should update padreador" do
    patch padreador_url(@padreador), params: { padreador: { caracteristica_id: @padreador.caracteristica_id, data_nascimento: @padreador.data_nascimento, falecido: @padreador.falecido, nome: @padreador.nome, raca_id: @padreador.raca_id } }
    assert_redirected_to padreador_url(@padreador)
  end

  test "should destroy padreador" do
    assert_difference('Padreador.count', -1) do
      delete padreador_url(@padreador)
    end

    assert_redirected_to padreadores_url
  end
end
