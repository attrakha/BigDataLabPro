Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/yazilar' => 'yazilar#index'
  get '/yazilar/new' => 'yazilar#new'
  post '/yazilar' => 'yazilar#create'
  get '/yazi/:id' => 'yazilar#show', as: :yazi
  get '/yazi/:id/edit' => 'yazilar#edit', as: :edit_yazi
  patch '/yazi/:id' => 'yazilar#update'
  delete 'yazi/:id' => 'yazilar#destroy', as: :delete_yazi


end
