class TodosController < ApplicationController

    get '/todos' do
        binding.pry
        @todos = Todo.all #includes?(:users)
        erb :"todos/index"
    end
end