require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    params[:name].reverse
  end

  get '/square/:number' do 
    answer = (params[:number].to_i)** 2
    answer.to_s
  end

  get '/say/:number/:phrase' do 
    phrases = ""
    params[:number].to_i.times do 
      phrases += params[:phrase]
    end
    phrases

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    one = params[:number1].to_i 
    two = params[:number2].to_i
    case params[:operation]
    when 'add'
      (one + two).to_s
    when 'subtract'
       (one - two).to_s
    when 'multiply'
       (one * two).to_s
    when 'divide'
       (one / two).to_s
    end
  end






end