require 'test_helper'

class EmpleaditosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empleadito = empleaditos(:one)
  end

  test "should get index" do
    get empleaditos_url
    assert_response :success
  end

  test "should get new" do
    get new_empleadito_url
    assert_response :success
  end

  test "should create empleadito" do
    assert_difference('Empleadito.count') do
      post empleaditos_url, params: { empleadito: { apellido_materno: @empleadito.apellido_materno, apellido_paterno: @empleadito.apellido_paterno, documento_id: @empleadito.documento_id, id_privilegio: @empleadito.id_privilegio, nombre: @empleadito.nombre, numero_documento: @empleadito.numero_documento } }
    end

    assert_redirected_to empleadito_url(Empleadito.last)
  end

  test "should show empleadito" do
    get empleadito_url(@empleadito)
    assert_response :success
  end

  test "should get edit" do
    get edit_empleadito_url(@empleadito)
    assert_response :success
  end

  test "should update empleadito" do
    patch empleadito_url(@empleadito), params: { empleadito: { apellido_materno: @empleadito.apellido_materno, apellido_paterno: @empleadito.apellido_paterno, documento_id: @empleadito.documento_id, id_privilegio: @empleadito.id_privilegio, nombre: @empleadito.nombre, numero_documento: @empleadito.numero_documento } }
    assert_redirected_to empleadito_url(@empleadito)
  end

  test "should destroy empleadito" do
    assert_difference('Empleadito.count', -1) do
      delete empleadito_url(@empleadito)
    end

    assert_redirected_to empleaditos_url
  end
end
