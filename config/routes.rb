

Rails.application.routes.draw do





  root 'users#index'

  resources :users, except: []
  resources :sessions, only: [:new, :create, :destroy]
  resources :questions, exept: [:show, :new, :index]

  get 'sign_up' => 'users#new'
  get 'delete' => 'users#destroy'
  get 'log_out' => 'sessions#destroy'
  get 'log_in' => 'sessions#new'
end
