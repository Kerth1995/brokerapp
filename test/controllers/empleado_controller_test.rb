require 'test_helper'

class EmpleadoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get empleado_index_url
    assert_response :success
  end

end
