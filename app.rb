require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
      @get_p = params[:item]
      @session = session
      @session[:item] = @get_p
  end

end
