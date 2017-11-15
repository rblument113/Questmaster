Rails.application.routes.draw do
  get 'welcome/index'
  resources :characters do
    resources :character_feats_maps
  end
  resources :feats do
    resources :character_feats_maps
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
