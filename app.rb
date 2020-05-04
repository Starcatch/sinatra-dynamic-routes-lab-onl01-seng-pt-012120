require_relative 'config/environment'

class App < Sinatra::Base
  #renders the name backwards
  get '/reversename/:name' do
    @name = params[:name]
    erb :reversename
  end
  #renders the square of the number
  get '/square/:number' do
    @num = params[:number].to_i
    erb :square
  end
  
  #repeats the phrase n times
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    erb :saywords
  end
  

end