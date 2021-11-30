Rails.application.routes.draw do
  resources:matchs
  get 'matchs/about'
  get 'matchs/index'
  root 'bettings#index'
  resources:bettings , path_names: { new: 'make', edit: 'change' }
  resources:bettings do 
     resources:matchids

  #get 'bettings/submit' , to: 'bettings#submit'
  #get 'bettings/pointsbid', to: 'bettings#pointsbid'
  
  #get 'bettings/index'
  #get '/bettings', to: 'bettings#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
end
