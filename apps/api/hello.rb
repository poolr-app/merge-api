require 'grape'

module Merge
    class Hello < Grape::API
        format :json
        @route = '/hello'
        get @route do
            { hello: 'Hello World from Grape' }
        end
        
    end
end
