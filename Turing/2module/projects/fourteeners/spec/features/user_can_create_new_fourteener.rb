require_relative '../rails_helper'

RSpec.describe Fourteener, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:image)}
    it { is_expected.to validate_presence_of(:elevation)}
  end
end

RSpec.feature "User submits a new fourteener" do
  scenario "they see the page for the individual fourteener" do
    # boulder = County.create(name: "Boulder")
    # longs = Fourteener.create(name: "Long's Peak", elevation: 14259, county_id: boulder.id, image: "http://www.karlkelman.com/fourteeners/longs-peak/aerial-views/The-Diamond-Longs-Peak-Edited-web-766.jpg")
    name = "Long's Peak"
    elevation = 14259
    image = "http://www.karlkelman.com/fourteeners/longs-peak/aerial-views/The-Diamond-Longs-Peak-Edited-web-766.jpg"

    visit fourteeners_path
byebug
    click_on "New fourteener"
    fill_in "fourteener_name", with: name
    fill_in "fourteener_elevation", with: elevation
    fill_in "fourteener_image", with: image
    click_on "Create Fourteener"

    expect(page).to have_content name
    expect(page).to have_content elevation
    expect(page).to have_css("img[src=\"#{image}\"]")
  end
end
