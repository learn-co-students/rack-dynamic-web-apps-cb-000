class Application
  @@count=-0
  @@n=20

  def call(env)
    resp = Rack::Response.new
    num_1 = Kernel.rand(1..@@n)
    num_2 = Kernel.rand(1..@@n)
    num_3 = Kernel.rand(1..@@n)
    resp.write "#{num_1}...#{num_2}...#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
      @@count=0
      @@n=20
    else

      resp.write "You Lose\n\n\n1-#{@@n}\n\n\n\n#{@@count}"
      @@count+=1
      if @@count>=10
        @@n-=1
        @@count=0
      end
    end
    resp.finish
  end

end
