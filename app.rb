require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @number=params.fetch("number").to_s
  @square=@number*@number
  erb(:squarer)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  erb(:square_rootr)
end

get("/payment/new") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/random/new") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
