require "application_system_test_case"

class EjemplosTest < ApplicationSystemTestCase
  setup do
    @ejemplo = ejemplos(:one)
  end

  test "visiting the index" do
    visit ejemplos_url
    assert_selector "h1", text: "Ejemplos"
  end

  test "creating a Ejemplo" do
    visit ejemplos_url
    click_on "New Ejemplo"

    fill_in "Apellido materno", with: @ejemplo.apellido_materno
    fill_in "Apellido paterno", with: @ejemplo.apellido_paterno
    fill_in "Id privilegio", with: @ejemplo.id_privilegio
    fill_in "Id tipo documento", with: @ejemplo.id_tipo_documento
    fill_in "Nombre", with: @ejemplo.nombre
    fill_in "Numero documento", with: @ejemplo.numero_documento
    click_on "Create Ejemplo"

    assert_text "Ejemplo was successfully created"
    click_on "Back"
  end

  test "updating a Ejemplo" do
    visit ejemplos_url
    click_on "Edit", match: :first

    fill_in "Apellido materno", with: @ejemplo.apellido_materno
    fill_in "Apellido paterno", with: @ejemplo.apellido_paterno
    fill_in "Id privilegio", with: @ejemplo.id_privilegio
    fill_in "Id tipo documento", with: @ejemplo.id_tipo_documento
    fill_in "Nombre", with: @ejemplo.nombre
    fill_in "Numero documento", with: @ejemplo.numero_documento
    click_on "Update Ejemplo"

    assert_text "Ejemplo was successfully updated"
    click_on "Back"
  end

  test "destroying a Ejemplo" do
    visit ejemplos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ejemplo was successfully destroyed"
  end
end
