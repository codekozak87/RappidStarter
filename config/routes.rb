RappidStarter::Application.routes.draw do
 
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
