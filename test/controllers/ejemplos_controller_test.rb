require 'test_helper'

class EjemplosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ejemplo = ejemplos(:one)
  end

  test "should get index" do
    get ejemplos_url
    assert_response :success
  end

  test "should get new" do
    get new_ejemplo_url
    assert_response :success
  end

  test "should create ejemplo" do
    assert_difference('Ejemplo.count') do
      post ejemplos_url, params: { ejemplo: { apellido_materno: @ejemplo.apellido_materno, apellido_paterno: @ejemplo.apellido_paterno, id_privilegio: @ejemplo.id_privilegio, id_tipo_documento: @ejemplo.id_tipo_documento, nombre: @ejemplo.nombre, numero_documento: @ejemplo.numero_documento } }
    end

    assert_redirected_to ejemplo_url(Ejemplo.last)
  end

  test "should show ejemplo" do
    get ejemplo_url(@ejemplo)
    assert_response :success
  end

  test "should get edit" do
    get edit_ejemplo_url(@ejemplo)
    assert_response :success
  end

  test "should update ejemplo" do
    patch ejemplo_url(@ejemplo), params: { ejemplo: { apellido_materno: @ejemplo.apellido_materno, apellido_paterno: @ejemplo.apellido_paterno, id_privilegio: @ejemplo.id_privilegio, id_tipo_documento: @ejemplo.id_tipo_documento, nombre: @ejemplo.nombre, numero_documento: @ejemplo.numero_documento } }
    assert_redirected_to ejemplo_url(@ejemplo)
  end

  test "should destroy ejemplo" do
    assert_difference('Ejemplo.count', -1) do
      delete ejemplo_url(@ejemplo)
    end

    assert_redirected_to ejemplos_url
  end
end
