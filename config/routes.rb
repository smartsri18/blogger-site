Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'pages#index'
  get '/about_us', to: 'pages#about'
  get '/profiles/:username', to: 'pages#user_profile', as: :user_profile
  resources :articles do
    resources :comments
  end
  match 'my_articles' => 'articles#my_articles', as: :user_root, :via => [:get, :post]
end
