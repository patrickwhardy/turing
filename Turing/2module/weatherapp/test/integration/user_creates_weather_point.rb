require_relative "../test_helper"
class UserCreatesWeatherPointTest < ActionDispatch::IntegrationTest
  test "user creates weather point" do
    visit new_weather_path

    click_button "Create Weather"

    assert_equal weathers_path, current_path
    assert page.has_content?("Weather for Denver at : High: , Low: , Wind Speed: , Cloud Cover: ")
  end

end
