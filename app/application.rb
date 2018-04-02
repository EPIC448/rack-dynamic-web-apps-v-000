class Application

  def call(env)
    resp = Rack::Response.new
  num_1 = kernel.rand(1..10)
  num_2= kernel.rand(1..10)
  num_3 = kernel.rand(1..10)


# the \n indicates it a new line.
  resp.write "#{num_1}\n"
  resp.write "#{num_2}\n"
  resp.write "#{num_3}\n"

  if num_1==num_2 && num_2==num_3
    resp.write "You Win"
  else
    resp.write "You Lose"
  end

  resp.finish  # the app will not run without the finish.
  end
end
