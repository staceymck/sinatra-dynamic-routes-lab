require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num * @num).to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @string = ""
    @num.times do
      @string += params[:phrase]
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @array = Array.new(params.values)
    @array.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation]
    when "add"
      result = @num1 + @num2
    when "subtract"
      result = @num1 - @num2
    when "multiply"
      result = @num1 * @num2
    when "divide"
      result = @num1 / @num2
    end
    result.to_s 
  end
end