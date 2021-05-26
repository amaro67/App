require "application_system_test_case"

class KontaktsTest < ApplicationSystemTestCase
  setup do
    @kontakt = kontakts(:one)
  end

  test "visiting the index" do
    visit kontakts_url
    assert_selector "h1", text: "Kontakts"
  end

  test "creating a Kontakt" do
    visit kontakts_url
    click_on "New Kontakt"

    click_on "Create Kontakt"

    assert_text "Kontakt was successfully created"
    click_on "Back"
  end

  test "updating a Kontakt" do
    visit kontakts_url
    click_on "Edit", match: :first

    click_on "Update Kontakt"

    assert_text "Kontakt was successfully updated"
    click_on "Back"
  end

  test "destroying a Kontakt" do
    visit kontakts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kontakt was successfully destroyed"
  end
end
