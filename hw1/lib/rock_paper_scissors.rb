class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    weakness = {'R' => 'P', 'P' => 'S', 'S' => 'R'}
    valid = weakness.include?(player1[1]) && weakness.include?(player2[1])
    fail NoSuchStrategyError, 'Strategy must be one of R,P,S' unless valid
    weakness[player1[1]] == player2[1] ? player2 : player1
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].is_a? String
      winner tournament[0], tournament[1]
    else
      winner(
        tournament_winner(tournament[0]),
        tournament_winner(tournament[1])
      )
    end
  end
end
