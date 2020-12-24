require 'test_helper'

class FilhotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filhote = filhotes(:one)
  end

  test "should get index" do
    get filhotes_url
    assert_response :success
  end

  test "should get new" do
    get new_filhote_url
    assert_response :success
  end

  test "should create filhote" do
    assert_difference('Filhote.count') do
      post filhotes_url, params: { filhote: { caracteristica_id: @filhote.caracteristica_id, data_nascimento: @filhote.data_nascimento, disponivel: @filhote.disponivel, matriz_id: @filhote.matriz_id, ninhada_id: @filhote.ninhada_id, nome: @filhote.nome, padreador_id: @filhote.padreador_id, preco: @filhote.preco, raca_id: @filhote.raca_id } }
    end

    assert_redirected_to filhote_url(Filhote.last)
  end

  test "should show filhote" do
    get filhote_url(@filhote)
    assert_response :success
  end

  test "should get edit" do
    get edit_filhote_url(@filhote)
    assert_response :success
  end

  test "should update filhote" do
    patch filhote_url(@filhote), params: { filhote: { caracteristica_id: @filhote.caracteristica_id, data_nascimento: @filhote.data_nascimento, disponivel: @filhote.disponivel, matriz_id: @filhote.matriz_id, ninhada_id: @filhote.ninhada_id, nome: @filhote.nome, padreador_id: @filhote.padreador_id, preco: @filhote.preco, raca_id: @filhote.raca_id } }
    assert_redirected_to filhote_url(@filhote)
  end

  test "should destroy filhote" do
    assert_difference('Filhote.count', -1) do
      delete filhote_url(@filhote)
    end

    assert_redirected_to filhotes_url
  end
end
