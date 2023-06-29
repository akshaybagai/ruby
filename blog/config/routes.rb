Rails.application.routes.draw do
  
  root "article#index"

  get "/article", to:"article#index"

end
