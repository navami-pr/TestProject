Rails.application.routes.draw do

	mount GrapeSwaggerRails::Engine, at: "/documentation"
  mount API => '/'
  
  resources :tickets do
  collection do 
    get :map
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
