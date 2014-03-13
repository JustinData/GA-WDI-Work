require 'spec_helper'

describe Chef do
	let(:episode) do
		Episode.create(name: 'S01E01')
	end

	let(:round) do
		Round.create(name: 'One', episode_id: episode.id)
	end

	let(:chef) { Chef.new }
	
	
	describe 'Chef has a name' do		
		context 'without a name' do
			it 'is not valid' do
				expect(chef).to have(1).errors_on(:name)
			end
		end

		context 'with a name' do
			it 'is valid' do
				chef.name = "Dude"
				expect(chef).to have(0).errors_on(:name)
			end
		end
	end


	# describe 'Chef makes it to a certain round' do
	# 	chef.name = "Dude"

	# 	context 

	# end


end











# let(:chef) { Chef.new }

# describe '#name' do
#   context "with a name" do
#     it "is valid" do
#       chef.name = "Pierre"
#       expect(chef).to have(0).errors_on(:name)
#     end     
#   end

#   context "with no name" do
#     it "isn't valid" do
#       expect(chef).to have(1).errors_on(:name)
#     end
#   end
# end