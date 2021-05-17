require "test_helper"

class RezervacijesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rezervacije = rezervacijes(:one)
  end

  test "should get index" do
    get rezervacijes_url
    assert_response :success
  end

  test "should get new" do
    get new_rezervacije_url
    assert_response :success
  end

  test "should create rezervacije" do
    assert_difference('Rezervacije.count') do
      post rezervacijes_url, params: { rezervacije: { datum: @rezervacije.datum, frizura: @rezervacije.frizura, klijent: @rezervacije.klijent } }
    end

    assert_redirected_to rezervacije_url(Rezervacije.last)
  end

  test "should show rezervacije" do
    get rezervacije_url(@rezervacije)
    assert_response :success
  end

  test "should get edit" do
    get edit_rezervacije_url(@rezervacije)
    assert_response :success
  end

  test "should update rezervacije" do
    patch rezervacije_url(@rezervacije), params: { rezervacije: { datum: @rezervacije.datum, frizura: @rezervacije.frizura, klijent: @rezervacije.klijent } }
    assert_redirected_to rezervacije_url(@rezervacije)
  end

  test "should destroy rezervacije" do
    assert_difference('Rezervacije.count', -1) do
      delete rezervacije_url(@rezervacije)
    end

    assert_redirected_to rezervacijes_url
  end
end
