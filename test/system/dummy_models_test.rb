require "application_system_test_case"

class DummyModelsTest < ApplicationSystemTestCase
  setup do
    @dummy_model = dummy_models(:one)
  end

  test "visiting the index" do
    visit dummy_models_url
    assert_selector "h1", text: "Dummy Models"
  end

  test "creating a Dummy model" do
    visit dummy_models_url
    click_on "New Dummy Model"

    fill_in "Dummy text1", with: @dummy_model.dummy_text1
    fill_in "Dummy text2", with: @dummy_model.dummy_text2
    fill_in "Dummy text3", with: @dummy_model.dummy_text3
    click_on "Create Dummy model"

    assert_text "Dummy model was successfully created"
    click_on "Back"
  end

  test "updating a Dummy model" do
    visit dummy_models_url
    click_on "Edit", match: :first

    fill_in "Dummy text1", with: @dummy_model.dummy_text1
    fill_in "Dummy text2", with: @dummy_model.dummy_text2
    fill_in "Dummy text3", with: @dummy_model.dummy_text3
    click_on "Update Dummy model"

    assert_text "Dummy model was successfully updated"
    click_on "Back"
  end

  test "destroying a Dummy model" do
    visit dummy_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dummy model was successfully destroyed"
  end
end
