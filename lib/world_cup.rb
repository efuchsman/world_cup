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
      array = players.select do |player|
        player.position == position
      end
    array
  end

end
