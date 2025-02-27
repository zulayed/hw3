Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  
  resources "places"
  get("/", { :controller => "places", :action => "index" })
  
  get "/places/:id/entries/new", :controller => "entries", :action => "new"
  post "/places/:id/entries", :controller => "entries", :action => "create"



end
