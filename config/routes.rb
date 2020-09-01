Rails.application.routes.draw do
  root to: "users#index"
  
  devise_for :users
  
  resources :users, only:[:show,:update] do
  		resources :avatars, only: [:create]  		
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	resources :logements, only:[:new,:create,:update] do
		resources :adresses,only:[:new,:create,:update]
    resources :informations, only:[:new,:create,:update,:edit]
	end

end

