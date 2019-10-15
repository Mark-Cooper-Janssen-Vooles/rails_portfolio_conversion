Rails.application.routes.draw do
  get "/", to: "pages#home", as: "root"
  get "/index", to: "pages#home"
  get "/about", to: "pages#about"
  get "/skills", to: "pages#skills"
  get "/projects", to: "pages#projects"

#contact form
  get "/contact", to: "message#index"
  post "/contact", to: "message#create"

  get "/thanks", to: "message#thank_you_page"
#blog page
  get "projects_blog", to: "blog#index"
  get "projects_secret", to: "blog#new"
  post "projects_secret", to: "blog#create"
  delete "projects_secret/:id", to: "blog#destroy"
  # "edit_projects_blog", to: ""
end
