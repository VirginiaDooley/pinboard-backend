Rails.application.routes.draw do
  get 'welcome/home'
  get 'welcome/app'
  namespace :api do
    namespace :v1 do
      resources :images
      resources :boards
    end
  end
end

# fetch('http://localhost:3000/api/v1/boards')
