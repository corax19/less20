require 'sinatra'
require 'sinatra/reloader'


get '/' do
  erb :index
end

post '/' do
  ####
  @name = params[:name]
  @phone = params[:phone]
  @vtime = params[:vdate]
  myFile = File.open('./public/visits.txt', 'a')
  strin1 = "#{@name};#{@phone};#{@vtime}"
  myFile.puts strin1
  myFile.close

  @message = "Dear #{@name} , your phone #{@phone} come at #{@vtime}"
  erb :index
end