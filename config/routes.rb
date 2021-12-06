Rails.application.routes.draw do

  get 'users/show'
  get 'users/edit'
  resources :homes, only: [:top] do
    root to: 'homes#top'
    collection do
      get 'about'
    end
  end

  devise_for :users
  resources :users, :only => [:index, :show]

  resources :books


end
