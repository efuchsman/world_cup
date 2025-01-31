class Team

  attr_reader :country, :players

  def initialize(country)
    @country = country
    @players = []
    @eliminated = false
  end

  def eliminated?
    @eliminated
  end

  def eliminate
    @eliminated = true
  end

  def add_player(player)
    @players << player
  end

  def players_by_position(position)
    position_array = @players.select do |player|
      player.position == position
    end
    position_array
  end

end
