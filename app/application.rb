class Application 
  
  def call(env)
    resp = Rack::Response.new
    
    if Time.now >= 12 
      resp.write "Good Afternoon"
      
      now = Time.now

     if now.hour >= 12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    
    resp.write "Hello, World"
    resp.finish
  end
  
end 