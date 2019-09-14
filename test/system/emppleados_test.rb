require "application_system_test_case"

class EmppleadosTest < ApplicationSystemTestCase
  setup do
    @emppleado = emppleados(:one)
  end

  test "visiting the index" do
    visit emppleados_url
    assert_selector "h1", text: "Emppleados"
  end

  test "creating a Emppleado" do
    visit emppleados_url
    click_on "New Emppleado"

    fill_in "Apellido materno", with: @emppleado.apellido_materno
    fill_in "Apellido paterno", with: @emppleado.apellido_paterno
    fill_in "Id privilegio", with: @emppleado.id_privilegio
    fill_in "Id tipo documento", with: @emppleado.id_tipo_documento
    fill_in "Nombre", with: @emppleado.nombre
    fill_in "Numero documento", with: @emppleado.numero_documento
    click_on "Create Emppleado"

    assert_text "Emppleado was successfully created"
    click_on "Back"
  end

  test "updating a Emppleado" do
    visit emppleados_url
    click_on "Edit", match: :first

    fill_in "Apellido materno", with: @emppleado.apellido_materno
    fill_in "Apellido paterno", with: @emppleado.apellido_paterno
    fill_in "Id privilegio", with: @emppleado.id_privilegio
    fill_in "Id tipo documento", with: @emppleado.id_tipo_documento
    fill_in "Nombre", with: @emppleado.nombre
    fill_in "Numero documento", with: @emppleado.numero_documento
    click_on "Update Emppleado"

    assert_text "Emppleado was successfully updated"
    click_on "Back"
  end

  test "destroying a Emppleado" do
    visit emppleados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emppleado was successfully destroyed"
  end
end
