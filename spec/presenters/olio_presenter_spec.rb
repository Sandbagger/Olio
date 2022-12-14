require "rails_helper"
require 'ostruct'
RSpec.describe 'OlioPresenter' do
  let(:external_artical) { OpenStruct.new(id: 123) }

  context 'when Artical does not already exist' do
    # In the interest of test running speed I considered spying on Artical
    # but elected to write to database because the presenter is responsible for 
    # writting to the database and it is more valuable to have confidence in the creation logic 
    # 
    # before do
    #   allow(Artical).to receive(:find_or_create_by).with(external_id: 123)
    # end

    it 'creates a new artical' do
      expect(Artical.count).to eq 0
      OlioPresenter.new(external_artical)

      expect(Artical.find_by(external_id: 123).external_id).to eq '123'
      expect(Artical.count).to eq 1
    end
  end

  # Given more time I would increase test coverage....
  context 'when Artical already exists' do
  end

  # The feature spec covers the behavior for the instance methods  
  # so in the interst of time I have ommited futher unit tests for this spec
  context 'other unit tests for instance methods...' do
  end
end
