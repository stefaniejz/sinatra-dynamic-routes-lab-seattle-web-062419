require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    params[:name].reverse
 
  end

  get '/square/:number' do 
    (params[:number].to_i**2).to_s
  end

  get '/say/:number/:phrase' do 
    n=params[:number].to_i
    string=""
    n.times do 
      string +=params[:phrase]
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    answer = ''

  
    if params[:operation]=='add'
      answer = (number1 + number2).to_s
    elsif params[:operation]== 'subtract'
      answer = (number1 - number2).to_s
    elsif params[:operation]=='multiply'
      answer = (number1 * number2).to_s
    elsif params[:operation]=='divide'
      answer = (number1 / number2).to_s
    end
  end



end