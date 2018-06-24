class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now   #2018-06-24 12:28:08 +0100 

    if t.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
