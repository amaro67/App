require "application_system_test_case"

class FrizuresTest < ApplicationSystemTestCase
  setup do
    @frizure = frizures(:one)
  end

  test "visiting the index" do
    visit frizures_url
    assert_selector "h1", text: "Frizures"
  end

  test "creating a Frizure" do
    visit frizures_url
    click_on "New Frizure"

    fill_in "Cijena", with: @frizure.cijena
    fill_in "Opis", with: @frizure.opis
    fill_in "Tip", with: @frizure.tip
    click_on "Create Frizure"

    assert_text "Frizure was successfully created"
    click_on "Back"
  end

  test "updating a Frizure" do
    visit frizures_url
    click_on "Edit", match: :first

    fill_in "Cijena", with: @frizure.cijena
    fill_in "Opis", with: @frizure.opis
    fill_in "Tip", with: @frizure.tip
    click_on "Update Frizure"

    assert_text "Frizure was successfully updated"
    click_on "Back"
  end

  test "destroying a Frizure" do
    visit frizures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frizure was successfully destroyed"
  end
end
