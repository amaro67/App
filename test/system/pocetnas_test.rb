require "application_system_test_case"

class PocetnasTest < ApplicationSystemTestCase
  setup do
    @pocetna = pocetnas(:one)
  end

  test "visiting the index" do
    visit pocetnas_url
    assert_selector "h1", text: "Pocetnas"
  end

  test "creating a Pocetna" do
    visit pocetnas_url
    click_on "New Pocetna"

    click_on "Create Pocetna"

    assert_text "Pocetna was successfully created"
    click_on "Back"
  end

  test "updating a Pocetna" do
    visit pocetnas_url
    click_on "Edit", match: :first

    click_on "Update Pocetna"

    assert_text "Pocetna was successfully updated"
    click_on "Back"
  end

  test "destroying a Pocetna" do
    visit pocetnas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pocetna was successfully destroyed"
  end
end
