require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/beats.rb')

get('/game') do
  erb(:game)
end

get('/result') do
  @player_1 = Pieces.new(params.fetch('player_1'))
  @player_2 = Pieces.new(params.fetch('player_2'))

  types = ['rock', 'paper', 'scissors']
   
  if types.include?(@player_1.piece)
    if types.include?(@player_2.piece)
      @result = @player_1.beats?(@player_2)
      erb(:result)
    else
      @result = 'invalid'
      erb(:result)
    end
  else 
    @result = 'invalid'
    erb(:result)
  end
end
