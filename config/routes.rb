Rails.application.routes.draw do
  
  namespace do: api
    namespace do :v1
      resources :images
      resources :boards
    end
  end


fetch('http://localhost:3000/api/v1/boards')
