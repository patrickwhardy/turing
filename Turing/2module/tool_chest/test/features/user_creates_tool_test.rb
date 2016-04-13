require_relative "../test_helper"

class UserCreatesToolTest < ActionDispatch::IntegrationTest

  def setup
    reset_session!
    @user = User.create(username: "patrick", password: "password")
    @tool = @user.tools.create(name: "hammer", price: 1000, quantity: 3)
  end

  test "user can create a tool" do
    visit new_user_tool_path(@user)

    fill_in "Name", with: "Screwdriver"
    fill_in "Price", with: "10.99"
    fill_in "Quantity", with: "10"

    click_button "Create Tool"

    assert_equal user_tools_path(@user), current_path
    page.assert_selector(".notice", text: "you have successfully created a tool")

    within(".tool_info") do
      assert page.has_content?("Screwdriver")
      assert page.has_content?("10.99")
      assert page.has_content?("10")
    end
  end

  test "user can't create a tool without name" do
    visit new_user_tool_path(@user)

    fill_in "Price", with: "10.99"
    fill_in "Quantity", with: "10"

    click_button "Create Tool"

    assert_equal new_user_tool_path(@user), current_path
    page.assert_selector(".error", text: "Name can't be blank")
  end

  test "user can click on most recent tool" do
    visit new_user_tool_path(@user)

    fill_in "Name", with: "Screwdriver"
    fill_in "Price", with: "10.99"
    fill_in "Quantity", with: "10"

    click_button "Create Tool"

    assert page.has_content?("Newest tool: Screwdriver")
  end
end
