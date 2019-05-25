Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :advertisements do
    resources :comments, only: [:create]
  end
  root 'advertisements#index'
end
