require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    user_word = params["phrase"]
    word = PigLatinizer.new
    @pig_latinized_word = word.translate(user_word)

    erb :piglatinize
  end
end
