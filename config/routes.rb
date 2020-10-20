Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'content#toppage'
  resources :content
  resources :gemre
  resources :director
  resources :actor
  resources :screening_date



  

end
