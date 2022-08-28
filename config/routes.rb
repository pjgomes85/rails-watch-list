Rails.application.routes.draw do
  # get "landing" => "pages#landing"
  root to: "pages#landing"
  resources :lists, only: [ :index, :new, :create, :show, :destroy ] do
    resources :bookmarks, only: [ :new, :create ]
    # resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
