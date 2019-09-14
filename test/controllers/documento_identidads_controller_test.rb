require 'test_helper'

class DocumentoIdentidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @documento_identidad = documento_identidads(:one)
  end

  test "should get index" do
    get documento_identidads_url
    assert_response :success
  end

  test "should get new" do
    get new_documento_identidad_url
    assert_response :success
  end

  test "should create documento_identidad" do
    assert_difference('DocumentoIdentidad.count') do
      post documento_identidads_url, params: { documento_identidad: { descripcion: @documento_identidad.descripcion, nombre: @documento_identidad.nombre } }
    end

    assert_redirected_to documento_identidad_url(DocumentoIdentidad.last)
  end

  test "should show documento_identidad" do
    get documento_identidad_url(@documento_identidad)
    assert_response :success
  end

  test "should get edit" do
    get edit_documento_identidad_url(@documento_identidad)
    assert_response :success
  end

  test "should update documento_identidad" do
    patch documento_identidad_url(@documento_identidad), params: { documento_identidad: { descripcion: @documento_identidad.descripcion, nombre: @documento_identidad.nombre } }
    assert_redirected_to documento_identidad_url(@documento_identidad)
  end

  test "should destroy documento_identidad" do
    assert_difference('DocumentoIdentidad.count', -1) do
      delete documento_identidad_url(@documento_identidad)
    end

    assert_redirected_to documento_identidads_url
  end
end
