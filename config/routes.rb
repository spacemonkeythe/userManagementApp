Rails.application.routes.draw do

  root to: "static_pages#home", as: "root"

  get "/help", to: "static_pages#help", as: "help"

  get "/about", to: "static_pages#about", as: "about"

  get "/contact", to: "static_pages#contact", as: "contact"
end
