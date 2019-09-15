require "application_system_test_case"

class TareasTest < ApplicationSystemTestCase
  setup do
    @tarea = tareas(:one)
  end

  test "visiting the index" do
    visit tareas_url
    assert_selector "h1", text: "Tareas"
  end

  test "creating a Tarea" do
    visit tareas_url
    click_on "New Tarea"

    fill_in "Descripcion", with: @tarea.descripcion
    fill_in "Estado", with: @tarea.estado
    fill_in "Id tarea", with: @tarea.id_tarea
    fill_in "Nombre", with: @tarea.nombre
    click_on "Create Tarea"

    assert_text "Tarea was successfully created"
    click_on "Back"
  end

  test "updating a Tarea" do
    visit tareas_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @tarea.descripcion
    fill_in "Estado", with: @tarea.estado
    fill_in "Id tarea", with: @tarea.id_tarea
    fill_in "Nombre", with: @tarea.nombre
    click_on "Update Tarea"

    assert_text "Tarea was successfully updated"
    click_on "Back"
  end

  test "destroying a Tarea" do
    visit tareas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tarea was successfully destroyed"
  end
end
