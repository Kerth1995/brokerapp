require "application_system_test_case"

class EmpleaditosTest < ApplicationSystemTestCase
  setup do
    @empleadito = empleaditos(:one)
  end

  test "visiting the index" do
    visit empleaditos_url
    assert_selector "h1", text: "Empleaditos"
  end

  test "creating a Empleadito" do
    visit empleaditos_url
    click_on "New Empleadito"

    fill_in "Apellido materno", with: @empleadito.apellido_materno
    fill_in "Apellido paterno", with: @empleadito.apellido_paterno
    fill_in "Documento", with: @empleadito.documento_id
    fill_in "Id privilegio", with: @empleadito.id_privilegio
    fill_in "Nombre", with: @empleadito.nombre
    fill_in "Numero documento", with: @empleadito.numero_documento
    click_on "Create Empleadito"

    assert_text "Empleadito was successfully created"
    click_on "Back"
  end

  test "updating a Empleadito" do
    visit empleaditos_url
    click_on "Edit", match: :first

    fill_in "Apellido materno", with: @empleadito.apellido_materno
    fill_in "Apellido paterno", with: @empleadito.apellido_paterno
    fill_in "Documento", with: @empleadito.documento_id
    fill_in "Id privilegio", with: @empleadito.id_privilegio
    fill_in "Nombre", with: @empleadito.nombre
    fill_in "Numero documento", with: @empleadito.numero_documento
    click_on "Update Empleadito"

    assert_text "Empleadito was successfully updated"
    click_on "Back"
  end

  test "destroying a Empleadito" do
    visit empleaditos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empleadito was successfully destroyed"
  end
end
