require 'sinatra'
require 'sinatra/reloader'

compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get '/' do
  @greeting = "Hey, what's up?"
  @compliment = compliments.sample
  @color = colors.sample
  erb :layout
end

get '/:name' do

  @compliment = compliments.sample
  @color = colors.sample
  @greeting = "Oh hey, #{params[:name].capitalize}"
  erb :layout
end
