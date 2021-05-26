require "application_system_test_case"

class KlijentisTest < ApplicationSystemTestCase
  setup do
    @klijenti = klijentis(:one)
  end

  test "visiting the index" do
    visit klijentis_url
    assert_selector "h1", text: "Klijentis"
  end

  test "creating a Klijenti" do
    visit klijentis_url
    click_on "New Klijenti"

    fill_in "Broj", with: @klijenti.broj
    fill_in "Ime", with: @klijenti.ime
    fill_in "Prezime", with: @klijenti.prezime
    click_on "Create Klijenti"

    assert_text "Klijenti was successfully created"
    click_on "Back"
  end

  test "updating a Klijenti" do
    visit klijentis_url
    click_on "Edit", match: :first

    fill_in "Broj", with: @klijenti.broj
    fill_in "Ime", with: @klijenti.ime
    fill_in "Prezime", with: @klijenti.prezime
    click_on "Update Klijenti"

    assert_text "Klijenti was successfully updated"
    click_on "Back"
  end

  test "destroying a Klijenti" do
    visit klijentis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Klijenti was successfully destroyed"
  end
end
