
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if (index.between?(0, 8 )) && !(position_taken?(board, index))
    return true
  else
    return false
  end
end

def move(array, index, value = "X")
  array[index] = value
end

def input_to_index(input)
  return input.to_i - 1
end

def turn(board)
  # Validate user input
  user_input = 0
  until user_input.between?(1, 9)
    print "Please enter 1-9:"
    user_input = input_to_index(gets.strip)
  end


  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  end
end
