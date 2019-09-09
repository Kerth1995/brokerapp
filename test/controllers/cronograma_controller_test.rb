require 'test_helper'

class CronogramaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cronograma_index_url
    assert_response :success
  end

end
