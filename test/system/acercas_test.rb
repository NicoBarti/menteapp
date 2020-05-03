require "application_system_test_case"

class AcercasTest < ApplicationSystemTestCase
  setup do
    @acerca = acercas(:one)
  end

  test "visiting the index" do
    visit acercas_url
    assert_selector "h1", text: "Acercas"
  end

  test "creating a Acerca" do
    visit acercas_url
    click_on "New Acerca"

    click_on "Create Acerca"

    assert_text "Acerca was successfully created"
    click_on "Back"
  end

  test "updating a Acerca" do
    visit acercas_url
    click_on "Edit", match: :first

    click_on "Update Acerca"

    assert_text "Acerca was successfully updated"
    click_on "Back"
  end

  test "destroying a Acerca" do
    visit acercas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Acerca was successfully destroyed"
  end
end
