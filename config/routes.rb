Rails.application.routes.draw do
  resources :weeks

  get '/weeks_table' => "weeks#weeks_table"

  root 'welcome#index'

end
