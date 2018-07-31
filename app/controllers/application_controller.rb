require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end

  get '/order_pizza' do
    erb :order_pizza
  end

  post '/pricing' do
    #puts params[:cheese]
    puts params
    @cheese = params[:cheese]
    @sauce = params[:sauce]
    @toppings = params[:topping]
    @total = 10
    @total=cheese_price(@cheese, @total)
    @total=sauce_price(@sauce, @total)
    @total=topping_price(@toppings, @total)

    erb :pricing
  end
end
