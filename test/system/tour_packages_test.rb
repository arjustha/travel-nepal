require "application_system_test_case"

class TourPackagesTest < ApplicationSystemTestCase
  setup do
    @tour_package = tour_packages(:one)
  end

  test "visiting the index" do
    visit tour_packages_url
    assert_selector "h1", text: "Tour Packages"
  end

  test "creating a Tour package" do
    visit tour_packages_url
    click_on "New Tour Package"

    fill_in "Available dates", with: @tour_package.available_dates
    fill_in "Description", with: @tour_package.description
    fill_in "Name", with: @tour_package.name
    fill_in "Place", with: @tour_package.place_id
    fill_in "Price", with: @tour_package.price
    click_on "Create Tour package"

    assert_text "Tour package was successfully created"
    click_on "Back"
  end

  test "updating a Tour package" do
    visit tour_packages_url
    click_on "Edit", match: :first

    fill_in "Available dates", with: @tour_package.available_dates
    fill_in "Description", with: @tour_package.description
    fill_in "Name", with: @tour_package.name
    fill_in "Place", with: @tour_package.place_id
    fill_in "Price", with: @tour_package.price
    click_on "Update Tour package"

    assert_text "Tour package was successfully updated"
    click_on "Back"
  end

  test "destroying a Tour package" do
    visit tour_packages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tour package was successfully destroyed"
  end
end
