class WinnerOfTrick

  attr_reader :cards, :players, :points_arr

  def initialize(cards, players)
    @cards = cards
    @players = players
    @points_arr = []
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
end