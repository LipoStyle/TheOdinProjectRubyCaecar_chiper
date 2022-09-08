# class for the board
class Board
    # initializing the board to nil
    def initialize()
        @board = [[0,1,2],[3,4,5],[6,7,8]]
        p "Here is your board good luck to everyone!!!"
        print_board()
    end
    # getting the board
    def board_get()
        return @board
    end
    # printing the board
    def print_board()
        temp = "-------------\n"
        @board.each {|o_array| 
            temp += "|"
            o_array.each{|i_array|
                temp += " #{i_array} |"
            }
            temp += "\n-------------\n"
        }
        puts temp
    end

    # selecting where to put the symbol
    def put_symbol_on_board(symbol,index)
        case index
        when 0
            if @board[0][0] == "X" || @board[0][0] == "O" 
                puts "You cant write in #{index} possition, please try again somewhere else"
                print_board()
                return false
            end
            @board[0][0] = symbol
            print_board()
        when 1
            if @board[0][1] == "X" || @board[0][1] == "O" 
                puts "You cant write in #{index} possition, please try again somewhere else"
                print_board()
                return false
            end
            @board[0][1] = symbol
            print_board()
        when 2
            if @board[0][2] == "X" || @board[0][2] == "O" 
                puts "You cant write in #{index} possition, please try again somewhere else"
                print_board()
                return false
            end
            @board[0][2] = symbol
            print_board()
        when 3
            if @board[1][0] == "X" || @board[1][0] == "O" 
                puts "You cant write in #{index} possition, please try again somewhere else"
                print_board()
                return false
            end
            @board[1][0] = symbol
            print_board()
        when 4
            if @board[1][1] == "X" || @board[1][1] == "O" 
                puts "You cant write in #{index} possition, please try again somewhere else"
                print_board()
                return false
            end
            @board[1][1] = symbol
            print_board()
        when 5
            if @board[1][2] == "X" || @board[1][2] == "O" 
                puts "You cant write in #{index} possition, please try again somewhere else"
                print_board()
                return false
            end
            @board[1][2] = symbol
            print_board()
        when 6
            if @board[2][0] == "X" || @board[2][0] == "O" 
                puts "You cant write in #{index} possition, please try again somewhere else"
                print_board()
                return false
            end
            @board[2][0] = symbol
            print_board()
        when 7
            if @board[2][1] == "X" || @board[2][1] == "O" 
                puts "You cant write in #{index} possition, please try again somewhere else"
                print_board()
                return false
            end
            @board[2][1] = symbol
            print_board()
        when 8
            if @board[2][2] == "X" || @board[2][2] == "O" 
                puts "You cant write in #{index} possition, please try again somewhere else"
                print_board()
                return false
            end
            @board[2][2] = symbol
            print_board()
        else
            puts "You cant write in #{index} possition, please try again somewhere else"
            print_board()
            return false
        end
    end
    end
    # class for the players
class Player
    #initializing the symbol of the player from the start
    def initialize(symbol)
        @symbol = symbol
    end
    # setting the symbol of the player
    def symbol_set(symbol)
        @symbol = symbol
    end
    # getting the symbol of the player
    def symbol_get()
        return @symbol
    end
    # setting player id
    def player_id_set(id)
        @id = id
    end
    # getting player id
    def player_id_get()
        return @id
    end
    # swapping players
    def player_swap(player_id_get)
        if @id == 0
            player_id_set(1)
            symbol_set("O")
        else
            player_id_set(0)
            symbol_set("X")
        end
    end
end


# creating the board
 board = Board.new()  
#creating players
p1 = Player.new("X")
p1.player_id_set(0)
p2 = Player.new("O")
p2.player_id_set(1)

player_move = false


#defining the win conditon for the game 
def win_condition(current_board)
    win = false

    for i in 0..(current_board.length()-1) do
        for j in 0..(current_board[i].length()-3) do
            if current_board[i][j] == current_board[i][j+1] && current_board[i][j] == current_board[i][j+2] 
                win = true
            elsif current_board[j][i] == current_board[j+1][i] && current_board[j][i] == current_board[j+2][i]
                win = true
            end
        end
    end

    if current_board[0][0] == current_board[1][1] && current_board[0][0] == current_board[2][2]
        win = true
    elsif current_board[0][2] == current_board[1][1] && current_board[0][2] == current_board[2][0]
        win = true
    end

    return win
end

# playing the game
win_condition_vr = false

for i in 0..8 do 
    if player_move
        p1.player_swap(p1.player_id_get())
        player_move = false
    end
    puts "Enter Where you want to put ur symbol"
    index_of_symbol = gets.chomp.to_i
    temp = board.put_symbol_on_board(p1.symbol_get, index_of_symbol)
    while temp == false
        puts "Enter Where you want to put ur symbol"
        index_of_symbol = gets.chomp.to_i
        temp = board.put_symbol_on_board(p1.symbol_get, index_of_symbol)
        temp = true
    end
    if win_condition(board.board_get())
        puts "Congratulation for the victory"
        win_condition_vr = true
        break
    end
    player_move = true
end
if !win_condition_vr 
    puts "Well done to everyone, you have done a good draw"
end