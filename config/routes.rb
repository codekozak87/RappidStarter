RappidStarter::Application.routes.draw do

#Route for the landing page:

root :to => "landing_page#show"

get '/start', controller: "landing_page", action: "show", as: "start_here"


 
  # Routes for the Vote resource:
  # CREATE
  get '/votes/new', controller: 'votes', action: 'new', as: 'new_vote'
  post '/votes', controller: 'votes', action: 'create'

  # READ
  get '/votes', controller: 'votes', action: 'index', as: 'votes'
  get '/votes/:id', controller: 'votes', action: 'show', as: 'vote'

  # UPDATE
  get '/votes/:id/edit', controller: 'votes', action: 'edit', as: 'edit_vote'
  put '/votes/:id', controller: 'votes', action: 'update'

  # DELETE
  delete '/votes/:id', controller: 'votes', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  resources :user_stories


#Create

get "/starter/new", controller: "Starters", action: "new", as: "new_start"

post "/starter", controller: "Starters", action: "create"

#Read

get "/starter", controller: "Starters", action: "index", as: "starters"

get "/starter/:id", controller: "Starters", action: "show", as: "starter"

#Update

get "/starter/:id/edit", controller: "Starters", action: "edit", as: "fix_start" 

put "/starter/:id", controller: "Starters", action: "update"

#Delete

delete "/starter/:id", controller: "Starters", action: "delete"



end
