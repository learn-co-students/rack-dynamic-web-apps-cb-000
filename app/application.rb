class Application

  def call(env)
    resp = Rack::Response.new

    num1 = Kernel.rand(1..10)
    num2 = Kernel.rand(1..10)
    if num1 == num2
      resp.write "You Win"
    else
      resp.write 'You Lose'  
    end
    resp.finish
  end

end
