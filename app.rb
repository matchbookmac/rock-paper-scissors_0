require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/beats.rb')

get('/game') do
  erb(:game)
end

get('/result') do

  # if params.fetch('player_1').==('rock')
    player_1 = Pieces.new(params.fetch('player_1'))
  # elsif params.fetch('player_1').==('paper')
    player_2 = Pieces.new(params.fetch('player_2'))
# binding.pry    
  # elsif params.fetch('player_1').==('scissors')
    # scissors = Pieces.new(params.fetch('player_1'))
  # end

  # if params.fetch('player_2').==('rock')
  #   rock = Pieces.new(params.fetch('player_2'))
  # elsif params.fetch('player_2').==('paper')
  #   paper = Pieces.new(params.fetch('player_2'))
  # elsif params.fetch('player_2').==('scissors')
  #   scissors = Pieces.new(params.fetch('player_2'))
  # end

  @result = player_1.beats?(player_2)
# binding.pry
  erb(:result)
end
