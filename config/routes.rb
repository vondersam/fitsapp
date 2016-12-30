Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply, :restore, :mark_as_read
    end

    collection do
      delete :empty_trash
    end
  end

  resources :messages, only: [:new, :create]
  resources 'users', only: [:index, :show]

end
