Rails.application.routes.draw do
  namespace :lookup do
    resources :ip, only: :show, constraints: { id: /[0-9\.]+/ }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
