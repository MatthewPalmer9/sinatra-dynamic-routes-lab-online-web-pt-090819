require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].split("").reverse.join()
    "#{params[:name]} backwards is #{@name}."
  end

end
