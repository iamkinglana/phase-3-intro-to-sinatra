require 'sinatra'
require 'json'
class App < Sinatra::Base

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end
  get '/potato' do
    "<p>Boil 'em, mash 'em, stick 'em in a stew</p>"
  end
  get '/dice' do
    dice_roll = rand(1..85)
    # "<h2>You rolled a #{dice_roll}</h2>"
    { roll: dice_roll }.to_json
  end
  get '/add/1/2' do
    sum = 1 + 2
    { result: sum }.to_json
  end

end

run App
