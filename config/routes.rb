Rails.application.routes.draw do
    root to: 'pages#home'

    devise_for :users

    resources :pokemons, only: %i[index show]

    resources :users, only: %i[show] do
        resources :pokemons

        resources :teams do
            resources :pokemons
        end
    end
end
