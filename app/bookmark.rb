require 'sinatra/base'

class BOOKMARK < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/css/style.css' do
    scss :style
  end

  run! if app_file == $0
end
