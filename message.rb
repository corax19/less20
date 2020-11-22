require 'sinatra'


get  '/' do
  erb :index
end

post  '/' do
  @name = params[:name]
  @phone = params[:phone]
  @vtime = params[:vdate]
  @message = "Dear #{@name} , your phone #{@phone} come at #{@vtime}"
  erb :index
end