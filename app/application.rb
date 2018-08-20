class Application

  def call(env)
    resp = Rack::Response.new
 
    time = Time.now
    time.hour >= 12 ? (resp.write "Afternoon") : (resp.write "Morning") 
 
    resp.finish
  end


end
