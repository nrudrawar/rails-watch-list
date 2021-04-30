Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:create, :index, :edit, :update, :new, :show] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
