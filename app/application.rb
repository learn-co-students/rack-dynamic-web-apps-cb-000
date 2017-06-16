class Application
  SLOT_SIZE = 6

  def call(env)
    resp = Rack::Response.new
    #  resp.write "Hello, World"
    num_1 = Kernel.rand(1..SLOT_SIZE)
    num_2 = Kernel.rand(1..SLOT_SIZE)
    num_3 = Kernel.rand(1..SLOT_SIZE)

    resp.write "YOUR SLOT SPINNER SIZE IS #{SLOT_SIZE.to_s}\n\n"
    resp.write "RESULTS OF YOUR SPIN...\n"
    resp.write "#{num_1.to_s} | #{num_2.to_s} | #{num_3.to_s}\n\n"
    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
