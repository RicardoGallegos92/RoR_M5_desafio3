Rails.application.routes.draw do
  get "documentary_film/index", to: "documentary_film#index"
  # get "documentary_film/create", to: "documentary_film#create"
  get "documentary_film/new", to: "documentary_film#new"
  post "documentary_film", to: "documentary_film#create"

  get "serie/index", to: "serie#index"
  # get "serie/create", to: "serie#create"
  get "serie/new", to: "serie#new"

  get "movie/index", to: "movie#index"
  # get "movie/create", to: "movie#create"
  get "movie/new", to: "movie#new"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "documentary_film#new"
end
