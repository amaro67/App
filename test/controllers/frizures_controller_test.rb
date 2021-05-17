require "test_helper"

class FrizuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frizure = frizures(:one)
  end

  test "should get index" do
    get frizures_url
    assert_response :success
  end

  test "should get new" do
    get new_frizure_url
    assert_response :success
  end

  test "should create frizure" do
    assert_difference('Frizure.count') do
      post frizures_url, params: { frizure: { cijena: @frizure.cijena, opis: @frizure.opis, tip: @frizure.tip } }
    end

    assert_redirected_to frizure_url(Frizure.last)
  end

  test "should show frizure" do
    get frizure_url(@frizure)
    assert_response :success
  end

  test "should get edit" do
    get edit_frizure_url(@frizure)
    assert_response :success
  end

  test "should update frizure" do
    patch frizure_url(@frizure), params: { frizure: { cijena: @frizure.cijena, opis: @frizure.opis, tip: @frizure.tip } }
    assert_redirected_to frizure_url(@frizure)
  end

  test "should destroy frizure" do
    assert_difference('Frizure.count', -1) do
      delete frizure_url(@frizure)
    end

    assert_redirected_to frizures_url
  end
end
