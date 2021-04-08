class WinnerOfTrick

  attr_reader :cards, :players, :points_arr, :points_with_player

  def initialize(cards, players)
    @cards = cards
    @players = players
    @points_arr = []
    @points_with_player = []
  end

  def get_points_from_cards
    i = 0
    @cards.each{ |el| 
    if @cards[i][0] == "K"
      @points_arr.push(13)
    elsif @cards[i][0] == "Q"
      @points_arr.push(12)
    elsif @cards[i][0] == "J"
      @points_arr.push(11)
    elsif @cards[i][0] == "T"
      @points_arr.push(10)
    else
      @points_arr.push(@cards[i][0].to_i)
    end
    i += 1
  }
  end

  def match_points_with_player
    @points_arr.zip(@players)
  end

  def winner
    if match_points_with_player.sort[-1][0] == match_points_with_player.sort[-2][0]
      "Tie!"
    else 
      "#{match_points_with_player.sort[-1][1]} wins"
    end
  end

end