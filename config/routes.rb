Rails.application.routes.draw do
  root to: "users#index"
  # devise_scope :user do
  #   get "/some/route" => "some_devise_controller"
  # end
  
  devise_for :users
  
  resources :users, only:[:show,:update] do
  		resources :avatars, only: [:create]  		
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :adresses
	resources :logements, only:[:new,:create,:update,:index] do
    resources :photos
		resources :adresses,only:[:new,:create,:update,:index]
    resources :informations, only:[:new,:create,:update,:edit]
    get 'hebergement',to: 'hebergement#show', as: 'hebergement'

	end

end

