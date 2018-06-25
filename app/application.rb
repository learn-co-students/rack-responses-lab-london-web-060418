class Application

  def call(env)

    resp = Rack::Response.new

    currentTime = Time.now
    if(currentTime.hour < 12)
      resp.write("Good Morning, the time is #{currentTime.hour}:#{currentTime.min}:#{currentTime.sec}.")
    else
      resp.write("Good Afternoon, the time is #{currentTime.hour}:#{currentTime.min}:#{currentTime.sec}.")
    end

    resp.finish

  end


end
