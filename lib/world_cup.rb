class WorldCup

  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    players = @teams.map do |team|
      team.players if team.eliminated? == false
    end
    players = players.flatten

    players.select do |player|
      player && player.position == position
    end
  end

  def all_players_by_position
    position_hash = Hash.new {|h, k| h[k] = [] }
    players = @teams.map do |team|
      team.players
    end
    players = players.flatten
      players.each do |player|
        position_hash[player.position] << player
      end
      position_hash
  end

end
