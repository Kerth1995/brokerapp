require 'test_helper'

class PrivilegioEmpleadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @privilegio_empleado = privilegio_empleados(:one)
  end

  test "should get index" do
    get privilegio_empleados_url
    assert_response :success
  end

  test "should get new" do
    get new_privilegio_empleado_url
    assert_response :success
  end

  test "should create privilegio_empleado" do
    assert_difference('PrivilegioEmpleado.count') do
      post privilegio_empleados_url, params: { privilegio_empleado: { descripcion: @privilegio_empleado.descripcion, nombre: @privilegio_empleado.nombre } }
    end

    assert_redirected_to privilegio_empleado_url(PrivilegioEmpleado.last)
  end

  test "should show privilegio_empleado" do
    get privilegio_empleado_url(@privilegio_empleado)
    assert_response :success
  end

  test "should get edit" do
    get edit_privilegio_empleado_url(@privilegio_empleado)
    assert_response :success
  end

  test "should update privilegio_empleado" do
    patch privilegio_empleado_url(@privilegio_empleado), params: { privilegio_empleado: { descripcion: @privilegio_empleado.descripcion, nombre: @privilegio_empleado.nombre } }
    assert_redirected_to privilegio_empleado_url(@privilegio_empleado)
  end

  test "should destroy privilegio_empleado" do
    assert_difference('PrivilegioEmpleado.count', -1) do
      delete privilegio_empleado_url(@privilegio_empleado)
    end

    assert_redirected_to privilegio_empleados_url
  end
end
