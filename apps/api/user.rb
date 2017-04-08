module Merge
    class User < Grape::API
        format :json
        get '/user' do
            {user: 'todo'}
        end
        resource :user do
            desc 'Returns a list of users in id order'
            get '/users' do
                User.all()
            end

            post '/users' do
    end
end
