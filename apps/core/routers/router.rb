class Router
    def initialize(request)
        @request = request
    end

    def route!
        if @request.path == '/'
            ['200', {'Content-Type' => 'text/html'}, ["Hello from the App!"]]
        else
            not_found
        end
    end

    private

    def not_found(msg = "Not Found Anywhere!")
        [404, { "Content-Type" => 'text/plain' }, [msg]]
    end
end
