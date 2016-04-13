require_relative "../test_helper"
class UserCanLogInTest < ActionDispatch::IntegrationTest

  def setup
    reset_session!
  end

  test "user can log in" do
    visit '/login'
    fill_in "Username", with: "patrick"
    fill_in "Password", with: "password"
    # save_and_open_page
    click_button "Save Session"
# byebug
# save_and_open_page
    assert user_tools_path, current_path
    page.assert_selector(".notice", text: "Welcome patrick")
  end
end
