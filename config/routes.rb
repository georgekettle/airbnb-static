Rails.application.routes.draw do
  get 'design', to: 'pages#design', as: :design
  get 'flats', to: 'flats#index', as: :flats
  get 'flats/:id', to: 'flats#show', as: :flat
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
