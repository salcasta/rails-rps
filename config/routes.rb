Rails.application.routes.draw do
  get("/", { :controller => "game", :action => "main_page"})

  get("/rock", { :controller => "game", :action => "rock"})
end
