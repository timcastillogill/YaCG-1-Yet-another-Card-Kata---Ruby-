require 'rspec'
require '../lib/WinnerOfTrick'

describe WinnerOfTrick do

  it 'will return an array of only the points when given only numbers as strings' do
    game = WinnerOfTrick.new(['2D'], ['Tim'])
    game.get_points_from_cards
    expect(game.points_arr).to eq [2]
  end

  # it 'will return an array of only the points when given K, Q, J and T as strings' do
  #   game = WinnerOfTrick.new(['KD', 'QS', 'JC', 'TH'], ['Tim'])
  #   expect(game.points_arr).to eq [13, 12, 11, 10]
  # end

  it 'will return an array of only the points when given K, Q, J and T as strings' do
    game = WinnerOfTrick.new(['KD'], ['Tim'])
    game.get_points_from_cards
    expect(game.points_arr).to eq [13]
  end

end






# def winnerOfTrick( cards, players )
#   points_arr = []
#   i = 0
#   cards.each{ |el| 
#     if cards[i][0] == "K"
#       points_arr.push(13)
#     elsif cards[i][0] == "Q"
#       points_arr.push(12)
#     elsif cards[i][0] == "J"
#       points_arr.push(11)
#     elsif cards[i][0] == "T"
#       points_arr.push(10)
#     else
#       points_arr.push(cards[i][0].to_i)
#     end
#     i += 1
#   }

#   results_and_players_arr = points_arr.zip(players)
#   results_and_players_arr.sort
  
#   if results_and_players_arr.sort[-1][0] == results_and_players_arr.sort[-2][0]
#     p "Tie!"
#   else 
#     p "#{results_and_players_arr.sort[-1][1]} wins"
#   end
# end



# winnerOfTrick( ["2D", "4D", "3S"],  ["GgbA", "mZoIs", "S'Lg"] )
# # // -> "mZoIs wins" ("4D" is the highest)
# winnerOfTrick( ["4D", "2H", "4S"],  ["GgbA", "mZoIs", "S'Lg"] ) 
# #// -> "Tie! (GgbA,S'Lg)" ("4D" and "4S" are the highest)
# winnerOfTrick( ["2D", "KH", "QH"],  ["mZoIs", "GgbA", "S'Lg"] ) 
# #// -> "GgbA wins" ("KH" is the highest)