require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].split("").reverse.join()
    "#{params[:name]} backwards is #{@name}."
  end

  get '/square/:number' do
    @squared = params[:number].to_i
    "#{params[:number]} squared is #{@squared**2}."
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_array = []
    @number.times(){|num|
      @phrase_array << @phrase
    }
    "#{@phrase_array.join(" ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{}"
  end

end
