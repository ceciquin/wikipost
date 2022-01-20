Rails.application.routes.draw do
  get 'wikiposts/example'
  resources :wikiposts
  get 'welcome/index'
  get 'welcome/about'
  get '/about', to: redirect('welcome/about')
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
