Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :weeks

  get '/weeks_table' => "weeks#weeks_table"

  root 'welcome#index'

end
