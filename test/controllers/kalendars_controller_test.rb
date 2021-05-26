require "test_helper"

class KalendarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kalendar = kalendars(:one)
  end

  test "should get index" do
    get kalendars_url
    assert_response :success
  end

  test "should get new" do
    get new_kalendar_url
    assert_response :success
  end

  test "should create kalendar" do
    assert_difference('Kalendar.count') do
      post kalendars_url, params: { kalendar: {  } }
    end

    assert_redirected_to kalendar_url(Kalendar.last)
  end

  test "should show kalendar" do
    get kalendar_url(@kalendar)
    assert_response :success
  end

  test "should get edit" do
    get edit_kalendar_url(@kalendar)
    assert_response :success
  end

  test "should update kalendar" do
    patch kalendar_url(@kalendar), params: { kalendar: {  } }
    assert_redirected_to kalendar_url(@kalendar)
  end

  test "should destroy kalendar" do
    assert_difference('Kalendar.count', -1) do
      delete kalendar_url(@kalendar)
    end

    assert_redirected_to kalendars_url
  end
end
