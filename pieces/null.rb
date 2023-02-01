require_relative 'piece'
require 'singleton'

class NullPiece < Piece
  include Singleton

  attr_reader :symbol, :color

  def initialize
      @color = ''
      @symbol = ' '
      
  end

  def empty?
    true
  end

  def moves
    []
  end
  
end