class SolutionsController < ApplicationController

  def mad_lib_input

  end

  def mad_lib_output
    @adjective = params[:adjective]
    @noun = params[:noun]
    @animal = params[:animal]
    @noise = params[:noise]
  end

  def tic_tac_toe
    @board = params[:board] || ["0","1","2","3","4","5","6","7","8"]
    if params[:position]
      @board[params[:position].to_i] = params[:player]
    end
    winner = winner?
    if winner
      render plain: "#{winner} Wins! Refresh the page to play again"
    end
    if params[:player] == "x"
      @player = "o"
    else
      @player = "x"
    end
  end

  private
    def winner?
      @board.each do |row|
        return row[0] if row[0] == row[1] && row[1] == row[2]
      end
      (0..2).each do |column|
        return @board[0][column] if @board[0][column] == @board[1][column] && @board[1][column] == @board[2][column]
      end
      return @board[0][0] if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]
      return @board[0][2] if @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]
      nil
    end
end