require "rails_helper"

RSpec.describe 'OlioService' do
  let(:url) {'https://s3-eu-west-1.amazonaws.com/olio-staging-images/developer/test-articles-v4.json'}
  let(:body) { File.read('spec/response.json').to_json }
  let(:response) { instance_double(HTTParty::Response, body: body) }
  let(:parsed_response) { JSON.parse(body, object: OpenStruct) }

  before do
    allow(HTTParty).to receive(:get).with(url).and_return response
  end

  it 'returns an array of articals' do
    expect(OlioService.new.articals).to eq parsed_response
  end
end
