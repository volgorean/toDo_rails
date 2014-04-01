ToDo::Application.routes.draw do
  match('tasks', {:via => :get, :to => 'tasks#index'})
  match('tasks', {:via => :post, :to => 'tasks#create'})
  match('tasks/new_task', { :via => :get, :to => 'tasks#new_task'})
  match('tasks/:id', {:via => :get, :to => 'tasks#edit'})
  match('tasks/:id', { :via => [:patch, :put], :to => 'tasks#update' })
  match('tasks/:id', { :via => :delete, :to => 'tasks#destroy' })
  # match('tasks/:id', { :via => [:patch, :put], :to => 'tasks#mark_done' })
end
