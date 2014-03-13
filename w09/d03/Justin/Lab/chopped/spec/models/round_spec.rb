require 'spec_helper'

describe Round do
	let(:episode) do
		Episode.create(name: 'S01E01')
	end

	let(:round) do
		Round.create(name: 'One', episode_id: episode.id)
	end

	it 'validates the round to be valid' do
		expect(round).to be_valid      
	end

	it 'validates that the round is connected to an episode' do
		expect(round.episode).to be_an_instance_of Episode
	end
	
	it 'validates that the round has a name' do
		expect(round.name).to_not be(nil)
	end

	# it 'validates that a round will not create if there are already 3' do
		
	# end
end