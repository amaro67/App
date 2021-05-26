require "test_helper"

class KlijentisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @klijenti = klijentis(:one)
  end

  test "should get index" do
    get klijentis_url
    assert_response :success
  end

  test "should get new" do
    get new_klijenti_url
    assert_response :success
  end

  test "should create klijenti" do
    assert_difference('Klijenti.count') do
      post klijentis_url, params: { klijenti: { broj: @klijenti.broj, ime: @klijenti.ime, prezime: @klijenti.prezime } }
    end

    assert_redirected_to klijenti_url(Klijenti.last)
  end

  test "should show klijenti" do
    get klijenti_url(@klijenti)
    assert_response :success
  end

  test "should get edit" do
    get edit_klijenti_url(@klijenti)
    assert_response :success
  end

  test "should update klijenti" do
    patch klijenti_url(@klijenti), params: { klijenti: { broj: @klijenti.broj, ime: @klijenti.ime, prezime: @klijenti.prezime } }
    assert_redirected_to klijenti_url(@klijenti)
  end

  test "should destroy klijenti" do
    assert_difference('Klijenti.count', -1) do
      delete klijenti_url(@klijenti)
    end

    assert_redirected_to klijentis_url
  end
end
