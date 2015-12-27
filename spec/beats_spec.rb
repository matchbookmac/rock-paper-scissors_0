require('rspec')
require('beats')

describe('Pieces') do
  it('returns tie if rock is the object and rock is the argument') do
    rock = Pieces.new('rock')
    paper = Pieces.new('paper')
    scissors = Pieces.new('scissors')
    expect(rock.beats?(rock)).to(eq('tie'))
  end
  it('returns tie if scissors is the object and scissors is the argument') do
    rock = Pieces.new('rock')
    paper = Pieces.new('paper')
    scissors = Pieces.new('scissors')
    expect(scissors.beats?(scissors)).to(eq('tie'))
  end
  it('returns tie if paper is the object and paper is the argument') do
    rock = Pieces.new('rock')
    paper = Pieces.new('paper')
    scissors = Pieces.new('scissors')
    expect(paper.beats?(paper)).to(eq('tie'))
  end
  it('returns true if rock is the object and scissors is the argument') do
    rock = Pieces.new('rock')
    paper = Pieces.new('paper')
    scissors = Pieces.new('scissors')
    expect(rock.beats?(scissors)).to(eq(true))
  end
  it('returns false if rock is the object and paper is the argument') do
    rock = Pieces.new('rock')
    paper = Pieces.new('paper')
    scissors = Pieces.new('scissors')
    expect(rock.beats?(paper)).to(eq(false))
  end
  it('returns true if scissors is the object and paper is the argument') do
    rock = Pieces.new('rock')
    paper = Pieces.new('paper')
    scissors = Pieces.new('scissors')
    expect(scissors.beats?(paper)).to(eq(true))
  end
  it('returns false if scissors is the object and rock is the argument') do
    rock = Pieces.new('rock')
    paper = Pieces.new('paper')
    scissors = Pieces.new('scissors')
    expect(scissors.beats?(rock)).to(eq(false))
  end
  it('returns true if paper is the object and rock is the argument') do
    rock = Pieces.new('rock')
    paper = Pieces.new('paper')
    scissors = Pieces.new('scissors')
    expect(paper.beats?(rock)).to(eq(true))
  end
  it('returns false if paper is the object and scissors is the argument') do
    rock = Pieces.new('rock')
    paper = Pieces.new('paper')
    scissors = Pieces.new('scissors')
    expect(paper.beats?(scissors)).to(eq(false))
  end
end
