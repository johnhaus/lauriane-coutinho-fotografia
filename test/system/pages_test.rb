require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  test "can visit the index" do
    visit "/"
    assert_selector "h1", text: "Lauriane Coutinho Fotografia"
  end

  test "navbar links work" do
    visit "/"
    click_link('Serviços', match: :prefer_exact)
    assert_selector "h2", text: "Some Other Content"
    click_link('Lauriane Coutinho Fotographia', match: :prefer_exact)
    assert_selector "h1", text: "Lauriane Coutinho Fotografia"
  end
end
