require "application_system_test_case"

class PrivilegioEmpleadosTest < ApplicationSystemTestCase
  setup do
    @privilegio_empleado = privilegio_empleados(:one)
  end

  test "visiting the index" do
    visit privilegio_empleados_url
    assert_selector "h1", text: "Privilegio Empleados"
  end

  test "creating a Privilegio empleado" do
    visit privilegio_empleados_url
    click_on "New Privilegio Empleado"

    fill_in "Descripcion", with: @privilegio_empleado.descripcion
    fill_in "Nombre", with: @privilegio_empleado.nombre
    click_on "Create Privilegio empleado"

    assert_text "Privilegio empleado was successfully created"
    click_on "Back"
  end

  test "updating a Privilegio empleado" do
    visit privilegio_empleados_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @privilegio_empleado.descripcion
    fill_in "Nombre", with: @privilegio_empleado.nombre
    click_on "Update Privilegio empleado"

    assert_text "Privilegio empleado was successfully updated"
    click_on "Back"
  end

  test "destroying a Privilegio empleado" do
    visit privilegio_empleados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Privilegio empleado was successfully destroyed"
  end
end
