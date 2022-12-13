require "rails_helper"

RSpec.describe "Artical", :type => :feature do
  scenario "User uploads a books csv" do
    visit ""

    expect(page).to have_content 'Bananas'
    expect(page).to have_content 'Likes 1'
  end
end
