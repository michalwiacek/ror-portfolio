Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  #api
  namespace :api do
    namespace :v1 do
      resources :portfolios, only: [:index, :show]
    end
  end

  # scope :api, defaults: { format: :json } do
  #   resources :portfolios, only: [:index, :show]
  # end



  root to: 'pages#home'

end
