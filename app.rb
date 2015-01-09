require('sinatra')
require('sinatra/reloader')
require('./lib/beats')

get('/form') do
  erb(:form)
end

get('/rps') do


  @result = params.fetch("player1").beats(params.fetch("player2"))


  erb(:rps)
end
