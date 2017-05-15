class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..2)
    num_2 = Kernel.rand(1..2)
    num_3 = Kernel.rand(1..2)

    if num_1 == num_2 && num_2 == num_3
      resp.write "You Win!\n"
      resp.write "(#{num_1}, #{num_2}, #{num_3})"
    else
      resp.write "You Lose\n"
      resp.write "(#{num_1}, #{num_2}, #{num_3})"
    end

    resp.finish

  end

end
