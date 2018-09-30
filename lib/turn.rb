def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
   if index.to_i <=8 && index.to_i >=0 && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil && on_board?(board, index) == true
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, position, character = "X")
  board[position] = character
end

def turn
  puts "Please enter 1-9: "
  user_input = gets.strip
end

