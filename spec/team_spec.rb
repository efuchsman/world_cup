require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do
  it 'exists and readable attributes' do
    team = Team.new("France")

    expect(team).to be_an_instance_of Team
    expect(team.country).to eq("France")
    expect(team.players).to eq([])
  end

  it "can be check if the team is eliminated" do
    team = Team.new("France")
    expect(team.eliminated?).to be false

    team.eliminated

    expect(team.eliminated).to be true
  end

  it 'can add players' do
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

    team.add_player(mbappe)
    team.add_player(pogba)

    expect(team.players).to eq([mbappe, pogba])
  end

  it 'can list players by position' do
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

    team.add_player(mbappe)
    team.add_player(pogba)

    expect(team.players_by_position("midfielder")).to eq([pogba])
    expect(team.players_by_position("defender")).to eq([])
  end
end
