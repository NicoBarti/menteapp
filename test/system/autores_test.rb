require "application_system_test_case"

class AutoresTest < ApplicationSystemTestCase
  setup do
    @autore = autores(:one)
  end

  test "visiting the index" do
    visit autores_url
    assert_selector "h1", text: "Autores"
  end

  test "creating a Autore" do
    visit autores_url
    click_on "New Autore"

    click_on "Create Autore"

    assert_text "Autore was successfully created"
    click_on "Back"
  end

  test "updating a Autore" do
    visit autores_url
    click_on "Edit", match: :first

    click_on "Update Autore"

    assert_text "Autore was successfully updated"
    click_on "Back"
  end

  test "destroying a Autore" do
    visit autores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Autore was successfully destroyed"
  end
end
