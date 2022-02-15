Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # index route
  get "tasks", to: "tasks#index"

  # create route
  post "tasks", to: "tasks#create"
  get "tasks/new", to: "tasks#new", as: :new_task

  # edit route
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # show route
  get "tasks/:id", to: "tasks#show", as: :task
end
