Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'content#toppage'
  resources :content, only: [:new, :update , :edit , :create ,:destroy]
  resources :ganre ,only:[:show]
  resources :director ,only:[:show]
  resources :actor ,only:[:show]
  resources :screening_date ,only:[:show]



  

end
