# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Display all tasks
  get 'tasks', to: 'tasks#index', as: :tasks
  # Need both get form and post result
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  # Display individual tasks
  get 'task/:id', to: 'tasks#show', as: :task
  # Edit requires a patch too
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'task/:id', to: 'tasks#update'
  # delete
  delete 'task/:id', to: 'tasks#destroy'
end
