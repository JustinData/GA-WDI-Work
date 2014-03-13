require 'spec_helper'

describe Episode do
	let(:episode) do
		Episode.new(name: 'S01E01')
	end

	it 'validates the episode name' do
		expect(episode).to be_valid      
	end

end