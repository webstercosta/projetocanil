require 'test_helper'

class NinhadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ninhada = ninhadas(:one)
  end

  test "should get index" do
    get ninhadas_url
    assert_response :success
  end

  test "should get new" do
    get new_ninhada_url
    assert_response :success
  end

  test "should create ninhada" do
    assert_difference('Ninhada.count') do
      post ninhadas_url, params: { ninhada: { matriz_id: @ninhada.matriz_id, nome: @ninhada.nome, observacao: @ninhada.observacao, padreador_id: @ninhada.padreador_id, parto: @ninhada.parto, quantidade_falecido: @ninhada.quantidade_falecido, quantidade_vivo: @ninhada.quantidade_vivo, situacao: @ninhada.situacao } }
    end

    assert_redirected_to ninhada_url(Ninhada.last)
  end

  test "should show ninhada" do
    get ninhada_url(@ninhada)
    assert_response :success
  end

  test "should get edit" do
    get edit_ninhada_url(@ninhada)
    assert_response :success
  end

  test "should update ninhada" do
    patch ninhada_url(@ninhada), params: { ninhada: { matriz_id: @ninhada.matriz_id, nome: @ninhada.nome, observacao: @ninhada.observacao, padreador_id: @ninhada.padreador_id, parto: @ninhada.parto, quantidade_falecido: @ninhada.quantidade_falecido, quantidade_vivo: @ninhada.quantidade_vivo, situacao: @ninhada.situacao } }
    assert_redirected_to ninhada_url(@ninhada)
  end

  test "should destroy ninhada" do
    assert_difference('Ninhada.count', -1) do
      delete ninhada_url(@ninhada)
    end

    assert_redirected_to ninhadas_url
  end
end
