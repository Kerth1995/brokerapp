require 'test_helper'

class EmppleadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emppleado = emppleados(:one)
  end

  test "should get index" do
    get emppleados_url
    assert_response :success
  end

  test "should get new" do
    get new_emppleado_url
    assert_response :success
  end

  test "should create emppleado" do
    assert_difference('Emppleado.count') do
      post emppleados_url, params: { emppleado: { apellido_materno: @emppleado.apellido_materno, apellido_paterno: @emppleado.apellido_paterno, id_privilegio: @emppleado.id_privilegio, id_tipo_documento: @emppleado.id_tipo_documento, nombre: @emppleado.nombre, numero_documento: @emppleado.numero_documento } }
    end

    assert_redirected_to emppleado_url(Emppleado.last)
  end

  test "should show emppleado" do
    get emppleado_url(@emppleado)
    assert_response :success
  end

  test "should get edit" do
    get edit_emppleado_url(@emppleado)
    assert_response :success
  end

  test "should update emppleado" do
    patch emppleado_url(@emppleado), params: { emppleado: { apellido_materno: @emppleado.apellido_materno, apellido_paterno: @emppleado.apellido_paterno, id_privilegio: @emppleado.id_privilegio, id_tipo_documento: @emppleado.id_tipo_documento, nombre: @emppleado.nombre, numero_documento: @emppleado.numero_documento } }
    assert_redirected_to emppleado_url(@emppleado)
  end

  test "should destroy emppleado" do
    assert_difference('Emppleado.count', -1) do
      delete emppleado_url(@emppleado)
    end

    assert_redirected_to emppleados_url
  end
end
