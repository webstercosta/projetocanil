require "application_system_test_case"

class RacasTest < ApplicationSystemTestCase
  setup do
    @raca = racas(:one)
  end

  test "visiting the index" do
    visit racas_url
    assert_selector "h1", text: "Racas"
  end

  test "creating a Raca" do
    visit racas_url
    click_on "New Raca"

    fill_in "Nome", with: @raca.nome
    click_on "Create Raca"

    assert_text "Raca was successfully created"
    click_on "Back"
  end

  test "updating a Raca" do
    visit racas_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @raca.nome
    click_on "Update Raca"

    assert_text "Raca was successfully updated"
    click_on "Back"
  end

  test "destroying a Raca" do
    visit racas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Raca was successfully destroyed"
  end
end
