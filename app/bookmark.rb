require 'sinatra/base'
require_relative 'models/link'

class BOOKMARK < Sinatra::Base

  get '/' do
    'Hello World'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/css/style.css' do
    scss :style
  end

  run! if app_file == $0
end
