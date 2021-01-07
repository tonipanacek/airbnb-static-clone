Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'flats#index'
  # when you navigate to '/', where should the app go?
  # aka, which controller & which action?
  get 'flats/:id', to: 'flats#show', as: :flat
  # this is called a "dynamic url" (with the ":").
  # it means it will always send the data through in the params as a key/value pair
  # i.e. "id"="145"
end
