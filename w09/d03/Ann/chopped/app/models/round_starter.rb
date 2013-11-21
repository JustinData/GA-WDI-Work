class RoundStarter 

  #encapsulate logic for creating a new round 

  starter = RoundStarter.new(episode)
  round = starter.next_round

  expect(round.chefs.length).to eq(2)
  expect(episode.rounds.length).to eq(3)

end 

# episode has 2 rounds

