require "application_system_test_case"

class FilhotesTest < ApplicationSystemTestCase
  setup do
    @filhote = filhotes(:one)
  end

  test "visiting the index" do
    visit filhotes_url
    assert_selector "h1", text: "Filhotes"
  end

  test "creating a Filhote" do
    visit filhotes_url
    click_on "New Filhote"

    fill_in "Caracteristica", with: @filhote.caracteristica_id
    fill_in "Data nascimento", with: @filhote.data_nascimento
    check "Disponivel" if @filhote.disponivel
    fill_in "Matriz", with: @filhote.matriz_id
    fill_in "Ninhada", with: @filhote.ninhada_id
    fill_in "Nome", with: @filhote.nome
    fill_in "Padreador", with: @filhote.padreador_id
    fill_in "Preco", with: @filhote.preco
    fill_in "Raca", with: @filhote.raca_id
    click_on "Create Filhote"

    assert_text "Filhote was successfully created"
    click_on "Back"
  end

  test "updating a Filhote" do
    visit filhotes_url
    click_on "Edit", match: :first

    fill_in "Caracteristica", with: @filhote.caracteristica_id
    fill_in "Data nascimento", with: @filhote.data_nascimento
    check "Disponivel" if @filhote.disponivel
    fill_in "Matriz", with: @filhote.matriz_id
    fill_in "Ninhada", with: @filhote.ninhada_id
    fill_in "Nome", with: @filhote.nome
    fill_in "Padreador", with: @filhote.padreador_id
    fill_in "Preco", with: @filhote.preco
    fill_in "Raca", with: @filhote.raca_id
    click_on "Update Filhote"

    assert_text "Filhote was successfully updated"
    click_on "Back"
  end

  test "destroying a Filhote" do
    visit filhotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Filhote was successfully destroyed"
  end
end
