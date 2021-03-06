WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [0,4,8], #Left start diagonal
  [6,4,2]  #Right start diagonal
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
 
end


def  input_to_index(user_input)
     user_input.to_i-1
end

def move(board, index, character)
  board[index] = character
  return board
end

def  position_taken? (board, index)

  
 if  board[index] ==" " || board[index] =="" || board[index] == nil
   false 
   
 elsif board[index] == "X" || board[index] == "O"
   true
 
  end
end

def    valid_move? (board, index)
       index.between?(0, 8) && board[index] ==" " || board[index] ==""
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

   
   move(board, index)
  display_board(board)
  valid_move?(board, index)
  index.between?(0, 8) && board[index] ==" " || board[index] ==""
  until index.between?(0, 8)
end
 end
      puts "Please enter 1-9:"
end


def turn_count(board)
   counter = 0 
   
  board.each do |token|
    if token == "X" || token =="O"
  
  counter += 1
  
  end
 end
 
  counter
end

def current_player(board)
  if turn_count(board) % 2 == 0
    
    return "X"
    
  else 
    return "O"



end 
end

def won?(board)
  WIN_COMBINATIONS.each {|win_combo|
  
   index_0 = win_combo[0]
   index_1 = win_combo[1]
   index_2 = win_combo[2]
   
   position_1 = board[index_0]
   position_2 = board[index_1]
   position_3 = board[index_2]
  
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combo
    
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combo

end
}
    return false
 
 end
 
 def full?(board)
   board.all? {|index| index == "X" || index == "O"}
 end
 
 
  def draw?(board)
    if !won?(board) && full?(board)
    return true
  else 
    return false
 end
end 

 def over?(board)
   if won?(board) || full?(board) || draw?(board)
     return true
  else
    return false
    
  end
end

def winner(board)
  index = []
  index = won?(board)
  if index == false 
    return nil 
    
    else 
    if board[index[0]] == "X"
      return "X"
    else 
      return "O"
  end
 end 
end 

def play()
  
  
end

