Rails.application.routes.draw do
  resources :advertisements do
    resources :comments
  end
  root 'advertisements#index'
end
