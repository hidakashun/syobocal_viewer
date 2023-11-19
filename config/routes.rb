Rails.application.routes.draw do
  root 'syobocal#index'
  get '/syobocal/show/:tid', to: 'syobocal#show', as: 'syobocal_show'
end