require "application_system_test_case"

class RezervacijesTest < ApplicationSystemTestCase
  setup do
    @rezervacije = rezervacijes(:one)
  end

  test "visiting the index" do
    visit rezervacijes_url
    assert_selector "h1", text: "Rezervacijes"
  end

  test "creating a Rezervacije" do
    visit rezervacijes_url
    click_on "New Rezervacije"

    fill_in "Datum", with: @rezervacije.datum
    fill_in "Frizura", with: @rezervacije.frizura
    fill_in "Klijent", with: @rezervacije.klijent
    click_on "Create Rezervacije"

    assert_text "Rezervacije was successfully created"
    click_on "Back"
  end

  test "updating a Rezervacije" do
    visit rezervacijes_url
    click_on "Edit", match: :first

    fill_in "Datum", with: @rezervacije.datum
    fill_in "Frizura", with: @rezervacije.frizura
    fill_in "Klijent", with: @rezervacije.klijent
    click_on "Update Rezervacije"

    assert_text "Rezervacije was successfully updated"
    click_on "Back"
  end

  test "destroying a Rezervacije" do
    visit rezervacijes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rezervacije was successfully destroyed"
  end
end
