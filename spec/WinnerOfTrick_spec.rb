require 'rspec'
require '../lib/WinnerOfTrick'

describe WinnerOfTrick do

  it 'will return an array of only the points when given only numbers as strings' do
    game = WinnerOfTrick.new(['2D'], ['Tim'])
    game.get_points_from_cards
    expect(game.points_arr).to eq [2]
  end

  it 'will return an array of only the points when given K, Q, J and T as strings' do
    game = WinnerOfTrick.new(['KD', 'QS', 'JC', 'TH'], ['Tim'])
    game.get_points_from_cards
    expect(game.points_arr).to eq [13, 12, 11, 10]
  end

  it 'will return an array of only the points when given K, Q, J and T as strings' do
    game = WinnerOfTrick.new(['KD'], ['Tim'])
    game.get_points_from_cards
    expect(game.points_arr).to eq [13]
  end

  it 'will return an array with the score and player name' do
    game = WinnerOfTrick.new( ["2D", "4D", "3S"],  ["GgbA", "mZoIs", "S'Lg"] )
    game.get_points_from_cards
    expect(game.match_points_with_player).to eq [[2, "GgbA"], [4, "mZoIs"], [3, "S'Lg"]]
  end

  it 'will return the result of the game when only numbers' do
    game = WinnerOfTrick.new( ["2D", "4D", "3S"],  ["GgbA", "mZoIs", "S'Lg"] )
    game.get_points_from_cards
    expect(game.winner).to eq "mZoIs wins"
  end

  it 'will return the result of the game when it is a draw' do
    game = WinnerOfTrick.new( ["4D", "2H", "4S"],  ["GgbA", "mZoIs", "S'Lg"] )
    game.get_points_from_cards
    expect(game.winner).to eq "Tie!"
  end

  it 'will return the result of the game when letters and numbers are inputted' do
    game = WinnerOfTrick.new( ["2D", "KH", "QH"],  ["mZoIs", "GgbA", "S'Lg"] ) 
    game.get_points_from_cards
    expect(game.winner).to eq "GgbA wins"
  end
end