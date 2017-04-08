module Merge
    class API < Grape::API
        version 'v0', using: :header
        format :json

        mount ::Merge::Hello
    end
end


