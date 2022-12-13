require "rails_helper"
require 'ostruct'
RSpec.describe 'OlioPresenter' do
  let(:external_artical) { OpenStruct.new(id: 123) }

  context 'when Artical does not already exist' do
    # In the interest of test speed I considered spying on Artical 
    # but elected to write to database to validate creation logic 
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
end
