Rails.application.routes.draw do
    root to: 'pages#home'

    devise_for :users

    resources :users, only: %i[show] do
        resources :teams
    end
end
