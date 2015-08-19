require 'sinatra'
enable :sessions

get '/' do
    @suma = 0
    session[:suma] = @suma
    erb :form
end

post '/' do
    @suma = session[:suma] + 1
    session[:suma] = @suma
    erb :form
end