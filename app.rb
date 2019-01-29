require_relative 'config/environment'

class App < Sinatra::Base


get  '/' do
  # @pig = word.piglatinize
  erb :user_input
end

post  '/piglatinize' do
  @pig_view = PigLatinizer.new.piglatinize(params["user_phrase"])
  erb :pig_view
end

end
