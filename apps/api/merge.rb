require_relative './hello.rb'
require 'grape'

module Merge
    class API < Grape::API
        version 'v0', using: :header, vendor: 'merge'
        format :json

        mount ::Merge::Hello
    end
end


