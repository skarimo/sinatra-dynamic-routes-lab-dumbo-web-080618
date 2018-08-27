require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]

    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get '/say/:number/:phrase'  do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @phrase*@number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1+ " " + @word2+ " " + @word3+ " " + @word4+ " " + @word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = operations_helper(params[:operation])
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    "#{@number1.send(@operation, @number2)}"
  end

end

def operations_helper(operation)
  if operation == "add"
    return "+"
  elsif operation.downcase == "subtract"
    return "-"
  elsif operation.downcase  == "multiply"
    return "*"
  elsif operation.downcase  == "divide"
    return "/"
  end
end


















#
