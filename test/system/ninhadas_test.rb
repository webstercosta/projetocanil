require "application_system_test_case"

class NinhadasTest < ApplicationSystemTestCase
  setup do
    @ninhada = ninhadas(:one)
  end

  test "visiting the index" do
    visit ninhadas_url
    assert_selector "h1", text: "Ninhadas"
  end

  test "creating a Ninhada" do
    visit ninhadas_url
    click_on "New Ninhada"

    fill_in "Matriz", with: @ninhada.matriz_id
    fill_in "Nome", with: @ninhada.nome
    fill_in "Observacao", with: @ninhada.observacao
    fill_in "Padreador", with: @ninhada.padreador_id
    fill_in "Parto", with: @ninhada.parto
    fill_in "Quantidade falecido", with: @ninhada.quantidade_falecido
    fill_in "Quantidade vivo", with: @ninhada.quantidade_vivo
    fill_in "Situacao", with: @ninhada.situacao
    click_on "Create Ninhada"

    assert_text "Ninhada was successfully created"
    click_on "Back"
  end

  test "updating a Ninhada" do
    visit ninhadas_url
    click_on "Edit", match: :first

    fill_in "Matriz", with: @ninhada.matriz_id
    fill_in "Nome", with: @ninhada.nome
    fill_in "Observacao", with: @ninhada.observacao
    fill_in "Padreador", with: @ninhada.padreador_id
    fill_in "Parto", with: @ninhada.parto
    fill_in "Quantidade falecido", with: @ninhada.quantidade_falecido
    fill_in "Quantidade vivo", with: @ninhada.quantidade_vivo
    fill_in "Situacao", with: @ninhada.situacao
    click_on "Update Ninhada"

    assert_text "Ninhada was successfully updated"
    click_on "Back"
  end

  test "destroying a Ninhada" do
    visit ninhadas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ninhada was successfully destroyed"
  end
end
