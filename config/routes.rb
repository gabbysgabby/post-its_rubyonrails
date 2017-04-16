Rails.application.routes.draw do

  resources :postits

  root 'welcome#index'
end
