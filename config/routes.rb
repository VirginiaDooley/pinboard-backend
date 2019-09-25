Rails.application.routes.draw do
  devise_for :users
  # get 'welcome/home'
  #
  # get '/app', to: 'welcome#app', as: 'app'
  #
  # root 'welcome#home'

  namespace :api do
    namespace :v1 do
      resources :images
      resources :boards
    end
  end
end

# fetch('http://localhost:3000/api/v1/boards')
