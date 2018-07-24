Rails.application.routes.draw do
  get 'messages/index'
  get 'messages',to: 'messages#index'

  get 'messages/show'

  get 'messages/add'
  post 'messages/add',to: 'messages#create'

  get 'messages/edit/:id',to: 'messages#edit'
  patch 'messages/edit/:id',to: 'messages#update'

  get 'messages/delete/:id',to: 'messages#delete'
  get 'messages/:id',to: 'messages#show'

  

  get 'cards/index'
  get 'cards',to: 'cards#index'
  
  get 'cards/add'
  post 'cards/add'

  get 'cards/find'
  post 'cards/find'


  get 'cards/:id',to: 'cards#show'


  get 'cards/edit/:id',to: 'cards#edit'
  patch 'cards/edit/:id',to: 'cards#edit'

  get 'cards/delete/:id',to: 'cards#delete'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
