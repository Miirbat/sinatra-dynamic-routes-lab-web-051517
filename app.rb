require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @word = params[:name].reverse
    "#{@word}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @sq = @num * @num
    @sq.to_s
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number].to_i
    @arr = []
    @num.times do
      @arr << @phrase
    end
    "#{@arr.join("\n")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @arr = [@word1, @word2, @word3, @word4, @word5]
    "#{@arr.join(" ")}."
  end


  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    # @num1 = params[:number1].to_i
    # @num2 = params[:number2].to_i
    if @op == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"

    elsif @op == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"

    elsif @op == "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"

    elsif @op == "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"

    else
      "You did not enter the correct info."

  end
end


end





# Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
