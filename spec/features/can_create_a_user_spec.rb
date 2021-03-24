require 'spec_helper'

RSpec.describe "User can be created" do
  it "when filling in all information" do
    visit "/users"

    fill_in "user[first_name]", with: "Molly"
    fill_in "user[last_name]", with: "Manriquez"

    click_on "Sign Up"
    new_user = User.last

    expect(new_user.first_name).to eq("Molly")
    expect(new_user.last_name).to eq("Manriquez")
    expect(current_path).to eq("/users/#{new_user.id}")

    expect(page).to have_content("Molly")
    expect(page).to have_content("Manriquez")
  end
end