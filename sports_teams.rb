class SportsTeam

  attr_accessor :team_name, :players, :coach

    def initialize(team_name, players, coach)
      @team_name = team_name
      @players = players
      @coach = coach
      @points = 0
    end

    def add_players_to_team(new_player)
      @players << new_player
    end

    def find_player(player_name)
      for player in @players
        return true if player == player_name
      end
    end

    def total_number_of_wins(match_outcome)
    @points += 1  if match_outcome == "win"
    #  return @points  
    end

end
