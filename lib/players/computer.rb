<<<<<<< HEAD
module Players
  class Computer < Player
    
  def move(board)
    moves = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    moves.each do |move|
      if board.valid_move?(move)
        return move 
      end 
    end
  end
  
  end
end
=======
#module Player
#  class Computer < Player
    
  
  
#  end
#end
>>>>>>> e02b8da6685bd2e1f69385417f9e641243215dcf
