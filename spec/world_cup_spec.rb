require 'rspec'
require './lib/player'
require './lib/team'
require './lib/world_cup'

RSpec.describe WorldCup do
  it 'exists and has readable attributes' do
    france = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    croatia = Team.new("Croatia")
    modric = Player.new({name: "Luka Modric", position: "midfielder"})
    vida = Player.new({name: "Domagoj Vida", position: "defender"})
    world_cup = WorldCup.new(2018, [france, croatia])

    france.add_player(mbappe)
    france.add_player(pogba)
    croatia.add_player(modric)

    expect(world_cup).to be_an_instance_of(WorldCup)
    expect(world_cup.year).to eq(2018)

  end
end
