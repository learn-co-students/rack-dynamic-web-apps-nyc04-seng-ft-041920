class Application

  def call(env)
    # Rack::Response, for convenient generation of HTTP replies and cookie handling.
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..2)
    num_2 = Kernel.rand(1..2)
    num_3 = Kernel.rand(1..2)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end

# "<div style='width: 300px; margin: 0 auto; margin-top: 50px;'><em style='font-size: 40px;'>Hello, Marlon!</em><div>"] : ["<div style='width: 300px; margin: 0 auto; margin-top: 50px;'><strong style='font-size: 40px;'>Hello, Marlon!</strong><div>"