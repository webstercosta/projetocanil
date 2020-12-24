require "application_system_test_case"

class MatrizesTest < ApplicationSystemTestCase
  setup do
    @matriz = matrizes(:one)
  end

  test "visiting the index" do
    visit matrizes_url
    assert_selector "h1", text: "Matrizes"
  end

  test "creating a Matriz" do
    visit matrizes_url
    click_on "New Matriz"

    fill_in "Caracteristica", with: @matriz.caracteristica_id
    fill_in "Data nascimento", with: @matriz.data_nascimento
    check "Falecido" if @matriz.falecido
    fill_in "Nome", with: @matriz.nome
    fill_in "Raca", with: @matriz.raca_id
    click_on "Create Matriz"

    assert_text "Matriz was successfully created"
    click_on "Back"
  end

  test "updating a Matriz" do
    visit matrizes_url
    click_on "Edit", match: :first

    fill_in "Caracteristica", with: @matriz.caracteristica_id
    fill_in "Data nascimento", with: @matriz.data_nascimento
    check "Falecido" if @matriz.falecido
    fill_in "Nome", with: @matriz.nome
    fill_in "Raca", with: @matriz.raca_id
    click_on "Update Matriz"

    assert_text "Matriz was successfully updated"
    click_on "Back"
  end

  test "destroying a Matriz" do
    visit matrizes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Matriz was successfully destroyed"
  end
end
