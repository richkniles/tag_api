TagApi::Application.routes.draw do
  get 'tags/:entity_type/:entity_id', to: 'tags#show'
  post 'tags', to: 'tags#create'
end
