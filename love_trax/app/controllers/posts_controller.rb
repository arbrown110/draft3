class PostsController < ApplicationController
    get '/posts' do
      "Welcome back #{session[:username]}"
    end    
end   