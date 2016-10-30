require 'sinatra'
require 'sinatra/reloader'

compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you",
  "You're the world's #0 programmer"
]

get '/' do
  @greeting = "Here's a little something to cheer you up:"
  @compliment = compliments.sample
  erb :index
end
