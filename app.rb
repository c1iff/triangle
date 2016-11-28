require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/test_triangle') do
  
  erb(:output)
end
