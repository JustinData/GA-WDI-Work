require 'spec_helper'
require_relative '../lib/arena'


describe Arena do
   let(:arena){Arena.new("The Coliseum")}

   describe '#name' do
      it 'has a name' do
         expect(arena.name).to eq("The Coliseum")
      end
   end

   describe '#gladiators' do
      it "contains gladiators" do
         expect(arena.gladiators).to_not eq nil
      end
      it "has a name and a weapon" do
         expect(arena.new_gladiator("Ajax", "Long sword")).to include(name: "Ajax", weapon: "Long sword")
      end
   end

   describe 'max number of gladiator' do
      before do
         i=0
         while i <= 22 do
            arena.new_gladiator("Ajax", "Long sword")
            i += 1
         end
      end

      it 'can only have 20 or less gladiators' do
         expect(arena.gladiators.count).to be <= 20
      end
   end

   describe 'active gladiators' do
      before do
         arena.new_gladiator("Ajax", "Long sword")
      end

      it 'can view a gladiator in the area' do
         expect(arena.find("Ajax")).to eq true
      end
   end
end