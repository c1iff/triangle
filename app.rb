require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/test_triangle') do
  side_1 = params.fetch('side_1')
  side_2 = params.fetch('side_2')
  side_3 = params.fetch('side_3')
  @test_triangle = Triangle.new(side_1, side_2, side_3)
  erb(:output)
end
