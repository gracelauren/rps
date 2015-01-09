class String
  define_method(:beats) do |player_2|

    if player_2.==("random")
      player_2 = ["rock", "paper", "scissors"].sample()
    end

    if self.==("rock").&(player_2.==("scissors"))
      "Player One Wins"
    elsif self.==("scissors").&(player_2.==("paper"))
      "Player One Wins"
    elsif self.==("paper").&(player_2.==("rock"))
      "Player One Wins"
    elsif self.==(player_2)
      "It's a tie!"
    else
      "Player Two Wins"
    end
  end
end
