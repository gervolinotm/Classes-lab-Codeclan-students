require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative('../sports_teams')

class TestSportsTeam < MiniTest::Test

    def test_team_name_search
      players = ["David Hasselhof", "Zoe Ball", "Kermit T Frog"]
      sports_team = SportsTeam.new("Manchester United", players, "Terry McTerry")
      assert_equal("Manchester United", sports_team.team_name)
    end

    def test_players_in_team
      players = ["David Hasselhof", "Zoe Ball", "Kermit T Frog"]
      sports_team = SportsTeam.new("Manchester United", players, "Terry McTerry")
      assert_equal(players, sports_team.players)
    end

    def test_coach_of_team
      players = ["David Hasselhof", "Zoe Ball", "Kermit T Frog"]
      sports_team = SportsTeam.new("Manchester United", players, "Terry McTerry")
      assert_equal("Terry McTerry", sports_team.coach)
    end

    def test_update_team_name
      players = ["David Hasselhof", "Zoe Ball", "Kermit T Frog"]
      sports_team = SportsTeam.new("Manchester United", players, "Terry McTerry")
      sports_team.team_name = "Mancheater United"
      assert_equal("Mancheater United", sports_team.team_name)
    end

    def test_update_players
      players = ["David Hasselhof", "Zoe Ball", "Kermit T Frog"]
      sports_team = SportsTeam.new("Manchester United", players, "Terry McTerry")
      sports_team.players = ["Bill Lonely"]
      assert_equal(["Bill Lonely"], sports_team.players)
    end

    def test_update_coach_of_team
      players = ["David Hasselhof", "Zoe Ball", "Kermit T Frog"]
      sports_team = SportsTeam.new("Manchester United", players, "Terry McTerry")
      sports_team.coach = "Billy Bob Bob"
      assert_equal("Billy Bob Bob", sports_team.coach)
    end
end
# ["David Hasselhof", "Zoe Ball", "Kermit T Frog" ]
