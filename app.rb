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
    @number = params[:number].to_i.to_a
    @phrase = params[:phrase]
    "#{@number.each do @phrase end}"
  end

end
