TagApi::Application.routes.draw do
  get 'tags/:entity_type/:entity_id', to: 'tags#show'
  post 'tags', to: 'tags#create'
  delete 'tags/:entity_type/:entity_id', to: 'tags#delete'

  get 'stats', to: 'stats#index'
  get 'stats/:entity_type/:entity_id', to: 'stats#show'
end
