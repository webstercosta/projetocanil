require 'test_helper'

class MatrizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matriz = matrizes(:one)
  end

  test "should get index" do
    get matrizes_url
    assert_response :success
  end

  test "should get new" do
    get new_matriz_url
    assert_response :success
  end

  test "should create matriz" do
    assert_difference('Matriz.count') do
      post matrizes_url, params: { matriz: { caracteristica_id: @matriz.caracteristica_id, data_nascimento: @matriz.data_nascimento, falecido: @matriz.falecido, nome: @matriz.nome, raca_id: @matriz.raca_id } }
    end

    assert_redirected_to matriz_url(Matriz.last)
  end

  test "should show matriz" do
    get matriz_url(@matriz)
    assert_response :success
  end

  test "should get edit" do
    get edit_matriz_url(@matriz)
    assert_response :success
  end

  test "should update matriz" do
    patch matriz_url(@matriz), params: { matriz: { caracteristica_id: @matriz.caracteristica_id, data_nascimento: @matriz.data_nascimento, falecido: @matriz.falecido, nome: @matriz.nome, raca_id: @matriz.raca_id } }
    assert_redirected_to matriz_url(@matriz)
  end

  test "should destroy matriz" do
    assert_difference('Matriz.count', -1) do
      delete matriz_url(@matriz)
    end

    assert_redirected_to matrizes_url
  end
end
