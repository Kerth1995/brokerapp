require "application_system_test_case"

class DocumentoIdentidadsTest < ApplicationSystemTestCase
  setup do
    @documento_identidad = documento_identidads(:one)
  end

  test "visiting the index" do
    visit documento_identidads_url
    assert_selector "h1", text: "Documento Identidads"
  end

  test "creating a Documento identidad" do
    visit documento_identidads_url
    click_on "New Documento Identidad"

    fill_in "Descripcion", with: @documento_identidad.descripcion
    fill_in "Nombre", with: @documento_identidad.nombre
    click_on "Create Documento identidad"

    assert_text "Documento identidad was successfully created"
    click_on "Back"
  end

  test "updating a Documento identidad" do
    visit documento_identidads_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @documento_identidad.descripcion
    fill_in "Nombre", with: @documento_identidad.nombre
    click_on "Update Documento identidad"

    assert_text "Documento identidad was successfully updated"
    click_on "Back"
  end

  test "destroying a Documento identidad" do
    visit documento_identidads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Documento identidad was successfully destroyed"
  end
end
