require 'test_helper'

class EstadisticaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get estadistica_index_url
    assert_response :success
  end

end
