Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static#home'

  get '/game', to: 'game#index'

  get '/game/new', to: 'game#new'

  get '/game/:id', to: 'game#show'

  get '/game/:id/edit', to: 'game#edit'

end
