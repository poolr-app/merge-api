module Merge
    class Hello < Grape::API
        format :json
        get '/hello' do
            { hello: 'Hello World' }
        end
    end
end
