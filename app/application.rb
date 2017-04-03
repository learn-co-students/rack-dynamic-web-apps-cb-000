class Application

  def call(env)
    response = Rack::Response.new
    random_numbers = (1..3).map { Kernel.rand(1..20) }

    response.write random_numbers.join("\n") + "\n"
    response.write all_same?(random_numbers) ? 'You Win' : 'You Lose'
    response.finish
  end

  def all_same?(arr)
    arr.uniq.size == 1
  end
end
