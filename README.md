# YaCG-1-Yet-another-Card-Kata - Ruby

This is a codewar Kata that was made for Javascript but I have completed it using ruby complete with Rspec unit tests.

Original kata can be found [here](https://www.codewars.com/kata/59767719c74de3b2d100002c/train/javascript)

## Instructions

### To run tests on

1. Use `git clone` to make a local clone of this repo
2. Run `bundle install`
3. In the command line run `rspec` and you will see my tests all passing

## IRB

### A winner when only numbers are inputted
```
2.7.0 :002 > game = WinnerOfTrick.new( ["2D", "4D", "3S"],  ["GgbA", "mZoIs", "S'Lg"] )
2.7.0 :003 > game.get_points_from_cards
 => ["2D", "4D", "3S"] 
2.7.0 :004 > game.points_arr
 => [2, 4, 3] 
2.7.0 :005 > game.match_points_with_player
 => [[2, "GgbA"], [4, "mZoIs"], [3, "S'Lg"]] 
2.7.0 :006 > game.winner
 => "mZoIs wins" 
```

### A result when it is a draw
```
2.7.0 :002 > game = WinnerOfTrick.new( ["4D", "2H", "4S"],  ["GgbA", "mZoIs", "S'Lg"] )
2.7.0 :003 > game.get_points_from_cards
 => ["4D", "2H", "4S"] 
2.7.0 :004 > game.points_arr
 => [4, 2, 4] 
2.7.0 :005 > game.winner
 => "Tie!" 
 ```

 ### A winner when numbers and letters are inputted
```
2.7.0 :002 > game = WinnerOfTrick.new( ["2D", "KH", "QH"],  ["mZoIs", "GgbA", "S'Lg"] ) 
2.7.0 :003 > game.get_points_from_cards
 => ["2D", "KH", "QH"] 
2.7.0 :004 > game.points_arr
 => [2, 13, 12] 
2.7.0 :005 > game.match_points_with_player
 => [[2, "mZoIs"], [13, "GgbA"], [12, "S'Lg"]] 
2.7.0 :006 > game.winner
 => "GgbA wins" 
 ```