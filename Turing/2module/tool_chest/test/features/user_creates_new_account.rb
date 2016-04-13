require_relative "../test_helper"

class UserCreatesAccountTest < ActionDispatch::IntegrationTest
  def setup
    reset_session!
  end


  test "user can create an account" do
    visit new_user_path
# save_and_open_page
    fill_in "Username", with: "Patrick1412"
    fill_in "Password", with: "password"

    click_button "Create User"

    assert_equal tools_path, current_path
    page.assert_selector(".notice", text: "Welcome Patrick1412")
  end

end
