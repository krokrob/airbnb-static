require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit flats_url

    assert_selector "h1", text: "Discover all our flats"
  end

  test "visiting the homepage" do
    visit root_url

    assert_selector "h1", text: "Discover all our flats"
  end

  test "homepage should display flats" do
    visit root_url

    assert_selector 'h2', text: 'Charm at the Steps of the Sacre Coeur/Montmartre'
  end

  test "visiting show page" do
    visit flat_url(210)

    assert_selector 'h1', text: "Superbe vue à 2 min du Sacré Coeur"
  end
end
