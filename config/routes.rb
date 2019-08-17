Rails.application.routes.draw do
  root 'auto#home'
  post 'auto/twitter', to: 'auto#twitter'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
