def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false  
    true 
  else 
    false 
  end
end 

def position_taken?(board, index)
  if board[index] == "   " || board[index] == "  " || board[index] == " " || board[index] == ""
    false 
  elsif board[index] == "X" || board[index] == "O" 
    true
  else board[index] == nil
    false
  end
end

<<<<<<< HEAD
def turn(board)
=======
def turn(board, input)
>>>>>>> a64b5168c8a8daf2876e5777f6c89e6959b5d02d
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input) 
  if valid_move?(board, index) == true 
    move(board, index)
    display_board(board)
  else
<<<<<<< HEAD
    turn(board)
=======
    puts "Please enter 1-9:"
    turn()
>>>>>>> a64b5168c8a8daf2876e5777f6c89e6959b5d02d
  end
end

def input_to_index(input)
  index = input.to_i - 1  
  return index
end

def move(board, index, value = "X")
  board[index] = value 
end