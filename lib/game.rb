require 'pry'

class Game 
  
  attr_accessor :board, :player_1, :player_2
  
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
  end
    
  def current_player
    if @board.turn_count % 2 == 0
      @player_1
    else
      @player_2
    end
  end
  
  def won?
    WIN_COMBINATIONS.any? do |combo|
      if @board.cells[combo[0]] == @board.cells[combo[1]] && @board.cells[combo[1]] == @board.cells[combo[2]] && @board.cells[combo[0]] != " "
        return combo
      end
    end
  end

  def draw? 
    if won?
      false
    else @board.full?
    end
  end
  
  def over?
    if won?
      true
    elsif @board.full?
      true
    elsif draw?
      true
    else
      return false
    end
  end 
  
  def winner 
    won = won?
    if won != false
      @board.cells[won[0]]
    else
      nil
    end
  end

  def turn
<<<<<<< HEAD
    player = current_player
    current_move = player.move(@board)
    if !@board.valid_move?(current_move)
      turn
    else
      puts "Turn: #{@board.turn_count+1}"
      @board.display
      @board.update(current_move, player)
      puts "#{player.token} moved #{current_move}"
    end
  end
 
  def play
    while !over?
      turn
    end
    if draw? 
      puts "Cat's Game!"
    else
      puts "Congratulations #{winner}!"
    end
  end

=======
    puts
    binding.pry
    player_1.move
     # expect(game.player_1).to receive(:gets).and_return("1")
  end


>>>>>>> e02b8da6685bd2e1f69385417f9e641243215dcf
end


