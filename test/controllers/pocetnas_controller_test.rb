require "test_helper"

class PocetnasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pocetna = pocetnas(:one)
  end

  test "should get index" do
    get pocetnas_url
    assert_response :success
  end

  test "should get new" do
    get new_pocetna_url
    assert_response :success
  end

  test "should create pocetna" do
    assert_difference('Pocetna.count') do
      post pocetnas_url, params: { pocetna: {  } }
    end

    assert_redirected_to pocetna_url(Pocetna.last)
  end

  test "should show pocetna" do
    get pocetna_url(@pocetna)
    assert_response :success
  end

  test "should get edit" do
    get edit_pocetna_url(@pocetna)
    assert_response :success
  end

  test "should update pocetna" do
    patch pocetna_url(@pocetna), params: { pocetna: {  } }
    assert_redirected_to pocetna_url(@pocetna)
  end

  test "should destroy pocetna" do
    assert_difference('Pocetna.count', -1) do
      delete pocetna_url(@pocetna)
    end

    assert_redirected_to pocetnas_url
  end
end
