require "application_system_test_case"

class RecomendacionesTest < ApplicationSystemTestCase
  setup do
    @recomendacione = recomendaciones(:one)
  end

  test "visiting the index" do
    visit recomendaciones_url
    assert_selector "h1", text: "Recomendaciones"
  end

  test "creating a Recomendacione" do
    visit recomendaciones_url
    click_on "New Recomendacione"

    click_on "Create Recomendacione"

    assert_text "Recomendacione was successfully created"
    click_on "Back"
  end

  test "updating a Recomendacione" do
    visit recomendaciones_url
    click_on "Edit", match: :first

    click_on "Update Recomendacione"

    assert_text "Recomendacione was successfully updated"
    click_on "Back"
  end

  test "destroying a Recomendacione" do
    visit recomendaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recomendacione was successfully destroyed"
  end
end
