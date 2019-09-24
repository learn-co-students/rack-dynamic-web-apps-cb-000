class Application

  def call(env)
    resp = Rack::Response.new # 1. create a response object

    # 2. generate three numbers between 1 and 20
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    # 3. give the user information about what numbers they received
    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    # 4. check to see if the user won or not, using a conditional
    if num_1 == num_2 && num_2 == num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish # 5. complete the response
  end

end
