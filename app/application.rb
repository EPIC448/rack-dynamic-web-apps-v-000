class Application

  def call(env)
    resp = Rack::Response.new
  num_1 = kernel.rand(1..10)
  num_2= kernel.rand(1..10)
  num_3 = kernel.rand(1..10)

  if num_1==num_2 && num_2==num_3
    resp.write "You Win"
  else
    resp.write "You Lose"
  end

  resp.finish
end
end
