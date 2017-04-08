require_relative './routers/router.rb'

class Application 
    def new()
        puts "Newing it up!"
    end

    def call(env)
        puts "Calling"
        request = Rack::Request.new(env)
        serve_request(request)
    end

    def serve_request(request)
        "Serving"
        Router.new(request).route!
    end
end
