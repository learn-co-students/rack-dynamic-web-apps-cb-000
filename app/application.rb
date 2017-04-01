class Application

  def call(env)
    resp = Rack::Response.new

    arr = Array.new(3) { Kernel.rand(1..20) }

    resp.write "#{arr[0]} - #{arr[1]} - #{arr[2]}\n"
    if arr[0] == arr[1] && arr[1] == arr[2]
      resp.write "You Win :D"
    else
      resp.write "You Lose :c"
    end

    resp.finish # UH!
  end

end
