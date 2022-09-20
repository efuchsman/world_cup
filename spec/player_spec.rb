require 'rspec'
require './lib/player'

RSpec.describe Player do

  it 'exists and has readable attributes' do
    player = Player.new({name: "Luka Modric", position: "midfielder"})

    expect(player.name).to eq("Luka Modric")
    expect(player.position).to eq("midfielder")
  end
end
