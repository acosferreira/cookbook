Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'recipes_list', to: 'recipes#list'
  root 'rails_admin/main#dashboard'
end
