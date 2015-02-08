require('pry')

class Pieces
  include Comparable    
  attr_reader :piece

  def initialize(piece)
    @piece = piece
  end

  def <=>(other)
    if self.piece.==(other.piece)
      0
    elsif self.piece.==('rock')
      if other.piece==('paper')
        -1
      elsif other.piece.==('scissors')
        1        
      end
    elsif self.piece.==('paper')
      if other.piece==('scissors')
        -1
      elsif other.piece.==('rock')
        1        
      end
    elsif self.piece.==('scissors')
      if other.piece==('rock')
        -1
      elsif other.piece.==('paper')
        1        
      end     
    end
  end

  define_method(:beats?) do |play|
    if self.==(play)
      "tie"
    elsif self.>(play)
      true
    elsif self.<(play)
      false
    end
  end
end

rock = Pieces.new('rock')
paper = Pieces.new('paper')
scissors = Pieces.new('scissors')