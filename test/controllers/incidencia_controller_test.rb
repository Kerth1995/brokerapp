require 'test_helper'

class IncidenciaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get incidencia_index_url
    assert_response :success
  end

end
