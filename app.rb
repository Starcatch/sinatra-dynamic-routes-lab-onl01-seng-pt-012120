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
  

end