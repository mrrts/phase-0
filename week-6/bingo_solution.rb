# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
#   Define an instance variable as an array of letters B,I,N,G, and O 
#   Define a variable as a range of numbers 1-100, converted to an array
#   Return a random sample from the first variable concatenated to a random sample from the second

# # Check the called column for the number called.
#   #fill in the outline here
#   Separate the letter from the number in the call
#   Iterate through the board arrays, which are the rows
#     Test the number that is at the same index (column) as the index of its letter in the B-I-N-G-O array
#     IF it is the same as the number called, change the value to an 'X' string and return 

# # If the number is in the column, replace with an 'x'
#   #fill in the outline here
#   See above ^

# # Display a column to the console
#   #fill in the outline here
#   Iterate through the row arrays
#   Display the item that is at the same index as the index of its letter in the B-I-N-G-O array

# # Display the board to the console (prettily)
#   #fill in the outline here
#   Iterate through the row arrays
#   Join the items into a string of numbers or Xs separated by tab characters (for alignment)
#   Output the strings

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @bingo_letters = ['B', 'I', 'N', 'G', 'O']
#   end

#   def call
#     p @bingo_letters.sample + (1..100).to_a.sample.to_s
#   end

#   def check(num_called)
#     split_up = num_called.split('').partition {|item| @bingo_letters.include? item }
#     letter = split_up[0][0]
#     num = split_up[1].join('').to_i
#     @bingo_board.each do |item|
#       if item[@bingo_letters.index(letter)] == num
#         item[@bingo_letters.index(letter)] = 'X'
#       end
#     end
#     display_board
#   end

#   def display_board
#     @bingo_board.each do |row|
#       puts row.join('\t')
#     end
#   end

# end

# Refactored Solution
# Refactored to include proper Bingo board

class BingoBoard

  BINGO_LETTERS = ['B', 'I', 'N', 'G', 'O']
  RANGES = [(1..15), (16..30), (31..45), (46..60), (61..75)]

  def initialize
    @bingo_board = []
    shuffled = RANGES.map { |range| range.to_a.shuffle }
    #Add 5 Rows
    5.times do 
      @bingo_board << [shuffled[0].pop, shuffled[1].pop, shuffled[2].pop, shuffled[3].pop, shuffled[4].pop]
    end
    @bingo_board[2][2] = 'FREE'  #Free Space
    @called_numbers = []
  end

  def call
    letter = BINGO_LETTERS.sample
    num, first_try = nil, true
    while @called_numbers.include?(num) || first_try
      num = RANGES[BINGO_LETTERS.index(letter)].to_a.sample
      first_try = false
    end
    puts "\n\nCaller says: '#{letter}-#{num}!!!'\n"
    @called_numbers << num 
    return [letter, num]
  end

  def check(num_called)
    letter = num_called[0]
    column_number = BINGO_LETTERS.index(letter)
    num = num_called[1]
    @bingo_board.each_index do |row_index|
      @bingo_board[row_index][column_number] = 'X' if @bingo_board[row_index][column_number] == num
    end
    display_board
  end

  def display_board
    puts "\n\n"
    puts BINGO_LETTERS.join("\t") + "\n"
    puts "--\t--\t--\t--\t--\n"
    @bingo_board.each { |row| puts row.join("\t") } 
    puts "---------"
    puts (solved?) ? "BINGO!!!!" : "No Bingo yet! Keep playing."
    puts "\n\n"
    exit if solved?
  end

  def group_filled? group_arr
    group_arr.all? {|square| square == 'X' || square == 'FREE'}
  end


  def solved?
    # Check rows
    @bingo_board.each do |row|
      return true if group_filled?(row)
    end
    # Check columns
    (0..4).to_a.each do |i|
      nums_in_column = []
      @bingo_board.each do |row|
        nums_in_column << row[i]
      end
      return true if group_filled?(nums_in_column)
    end
    # Check topLeft-to-bottomRight diagnoal and bottomLeft-to-topRight diagonal
    tl_to_br, bl_to_tr = [], []
    (0..4).to_a.each do |i|
      tl_to_br << @bingo_board[i][i]
      bl_to_tr << @bingo_board[4-i][i]
    end
    return true if group_filled?(tl_to_br) || group_filled?(bl_to_tr)
    return false
  end


end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

$new_game = BingoBoard.new
$new_game.display_board

#Auto-play
until $new_game.solved? 
  $new_game.check($new_game.call)
  sleep 0.3
end

exit



#Reflection

# --- How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# Pseudocode only applied to the challenge as presented, so it wasn't too difficult. It would've been harder to 
# pseudocode the refactored solution, which incorporates a proper Bingo-board (Release 5) because that involved
# more complicated logic and threw a few curveballs at me. I think my pseudocoding style is fine as is, but
# I could definitely benefit from breaking up the steps into smaller steps as I sometimes condense a few 
# steps onto the same line. 


# --- What are the benefits of using a class for this challenge?

# Using a class for a new Bingo Game allows us to keep track of the instances of the game, which will each have a new
# board with random values and a new tracker of which numbers have already been called. The class also allows us to 
# separate the related methods that each game will use in an organized, DRY manner. 


# --- How can you access coordinates in a nested array?

# To access the coordinates in a nested array, you can use two sets of brackets after the array name:
#  - array[0][4] will return the 5th item (index 4) of the first array (index 0).


# --- What methods did you use to access and modify the array?

# I used the map and shuffle methods to create a random list of numbers for each letter (within the letter range), and
# I used the pop method to remove one value from that random-order range. I also had some other minor arrays that I 
# read using the include? method and modified using the << method. Whenever I needed a random item from an array,
# I used the sample method. I also used join to create printable strings from the array values. 


# --- Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# I learned about the sample method, which returns a randomly selected item from the array without having to
# generate a random number and then use it as the index. It is called by appending .sample to an array or to
# a variable holding and array. 


# --- How did you determine what should be an instance variable versus a local variable?

# Any variable that I needed to access in more than one method I created as instance variables. These included
# the @bingo_board and the @call_numbers arrays. Local variables were all that I needed if they had specific values that
# I only needed within the particular method, like letter or column_number, which had their own specific values within the 
# context of their parent methods only. 


# --- What do you feel is most improved in your refactored solution?

# The refactored solution has better console printing and incorporates a legitimate Bingo board with the 
# FREE space and the appropriate numbers for each column letter. It also keeps track of which numbers are called 
# so that you do not call any repeats, which mimics the real-life practice of drawing numbered items from the
# pot. 