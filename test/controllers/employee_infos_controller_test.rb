require "test_helper"

class EmployeeInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_info = employee_infos(:one)
  end

  test "should get index" do
    get employee_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_info_url
    assert_response :success
  end

  test "should create employee_info" do
    assert_difference('EmployeeInfo.count') do
      post employee_infos_url, params: { employee_info: { email: @employee_info.email, first_name: @employee_info.first_name, last_name: @employee_info.last_name, phone: @employee_info.phone } }
    end

    assert_redirected_to employee_info_url(EmployeeInfo.last)
  end

  test "should show employee_info" do
    get employee_info_url(@employee_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_info_url(@employee_info)
    assert_response :success
  end

  test "should update employee_info" do
    patch employee_info_url(@employee_info), params: { employee_info: { email: @employee_info.email, first_name: @employee_info.first_name, last_name: @employee_info.last_name, phone: @employee_info.phone } }
    assert_redirected_to employee_info_url(@employee_info)
  end

  test "should destroy employee_info" do
    assert_difference('EmployeeInfo.count', -1) do
      delete employee_info_url(@employee_info)
    end

    assert_redirected_to employee_infos_url
  end
end
