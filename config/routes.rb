Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'advertisements/user_advertisements' => 'advertisements#user_advertisements'
  resources :advertisements do
    resources :comments, only: [:create]
  end
  root 'advertisements#index'
end
