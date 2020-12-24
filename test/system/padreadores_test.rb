require "application_system_test_case"

class PadreadoresTest < ApplicationSystemTestCase
  setup do
    @padreador = padreadores(:one)
  end

  test "visiting the index" do
    visit padreadores_url
    assert_selector "h1", text: "Padreadores"
  end

  test "creating a Padreador" do
    visit padreadores_url
    click_on "New Padreador"

    fill_in "Caracteristica", with: @padreador.caracteristica_id
    fill_in "Data nascimento", with: @padreador.data_nascimento
    check "Falecido" if @padreador.falecido
    fill_in "Nome", with: @padreador.nome
    fill_in "Raca", with: @padreador.raca_id
    click_on "Create Padreador"

    assert_text "Padreador was successfully created"
    click_on "Back"
  end

  test "updating a Padreador" do
    visit padreadores_url
    click_on "Edit", match: :first

    fill_in "Caracteristica", with: @padreador.caracteristica_id
    fill_in "Data nascimento", with: @padreador.data_nascimento
    check "Falecido" if @padreador.falecido
    fill_in "Nome", with: @padreador.nome
    fill_in "Raca", with: @padreador.raca_id
    click_on "Update Padreador"

    assert_text "Padreador was successfully updated"
    click_on "Back"
  end

  test "destroying a Padreador" do
    visit padreadores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Padreador was successfully destroyed"
  end
end
