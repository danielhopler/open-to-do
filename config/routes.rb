Rails.application.routes.draw do

  root 'welcome#index'

  namespace :api, defaults: { format: :json } do
     resources :users do
       resources :lists
     end

     resources :lists, only: [:update] do
       resources :items, only: [:create]
     end

     resources :items, only: [:update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
