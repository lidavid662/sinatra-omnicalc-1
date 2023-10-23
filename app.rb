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
  @number=params.fetch("number").to_f
  @square=@number*@number
  erb(:squarer)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @number=params.fetch("user_number").to_f
  @squareroot=Math.sqrt(@number)
  erb(:squarer)
  erb(:square_rootr)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @apr=params.fetch("user_apr").to_f
  @years=params.fetch("user_years").to_f
  @pv=params.fetch("user_pv").to_f
  r = @apr/100/12
  @pmt = (@pv * r) / (1 - (1 + r) ** -(@years*12))
  erb(:paymentr)
end

get("/random/new") do
  erb(:random)
end

get("/random/results") do
  @min=params.fetch("user_min").to_f
  @max=params.fetch("user_max").to_f
  @output=rand(@min...@max)
  erb(:randomr)

end
