Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' ,to: 'display#index', as: 'home'
  get '/new', to: 'display#new'
  post '/todos', to: 'display#create'
end
