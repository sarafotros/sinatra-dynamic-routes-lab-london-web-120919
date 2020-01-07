require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name].reverse 
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    text = ' ' 
    @num = params[:number].to_i
    @num.times do 
      text += params[:phrase]
    end
    text
  end
 
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
   
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      answer = @num1 + @num2
      answer.to_s
    elsif  @operation == "subtract"
      answer = @num2 - @num1
      answer.to_s
    elsif @operation == "multiply"
      answer = @num1 * @num2
      answer.to_s
    else 
      answer = @num1 / @num2
      answer.to_s
    end

  end


end