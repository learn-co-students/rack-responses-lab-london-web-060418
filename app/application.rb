class Application

  def call(env)
    resp = Rack::Response.new

    hour = Time.now.hour

    if hour > 12
      resp.write('Good Afternood!')
    else
      resp.write('Good Morning!')
    end

    resp.finish
  end

end
