require_relative './apps/core/routers/router.rb'
require_relative './apps/api/merge.rb'

class Application 
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
