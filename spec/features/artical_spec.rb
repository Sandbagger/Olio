require "rails_helper"

RSpec.describe "Artical", :type => :feature do
  let(:url) {'https://s3-eu-west-1.amazonaws.com/olio-staging-images/developer/test-articles-v4.json'}
  let(:body){ JSON.parse(File.read('spec/response.json').to_json, object_class: OpenStruct) }
  let(:response) { instance_double(HTTParty::Response, body: body ) }

  before do
    allow(HTTParty).to receive(:get).with(url).and_return response
  end

  scenario "User uploads a books csv" do

    visit ""

    expect(page).to have_content 'Ambipur air freshener plugin'
    expect(page).to have_content 'Likes 1'
    expect(page.find('.card-img-top')['src']).to have_content 'https://cdn.olioex.com/uploads/photo/file/00gRGrBRDFYrR2j-9SJVYg/small_image.jpg'
    expect(page.find('.card-img-top')['alt']).to have_content 'Image of a Ambipur air freshener plugin'
  end
end
