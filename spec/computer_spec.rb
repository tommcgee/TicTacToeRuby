require "tic_tac_toe/board"
require "tic_tac_toe/computer"

module TicTacToe
  describe Computer do
    let (:game) {Board.new(9)}
    let (:computer) {Computer.new}
    let (:default_board) {Array.new(9,nil)}


    it "can make a return a random  unoccupied move on the board" do
      board = ['X',nil,'O',nil,'O',nil,'X',nil,'']
     computer.turn(board).should be_within(4).of(5)
    end

    it "can return the move to win them the game" do
      board = ['O','O',nil,
               nil,nil,nil,
               nil,nil,nil]
     computer.check_for_two('O',board).should eq(3)
    end

    it "can return the move to block the player" do
      board = ['X','X',nil,
               nil,nil,nil,
               nil,nil,nil]
     computer.check_for_two('X',board).should eq(3)
    end

    it "can go through all its other methods and returns the best move availible" do
      board = ['X',nil,'O',
               nil,nil,nil,
               'O',nil,'X']
     computer.turn(board).should eq(5)
    end

  end
end
