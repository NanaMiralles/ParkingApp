Rails.application.routes.draw do
  root to: "pages#index"
  
  get "/car_logs", to: "car_logs#index"
  post "/create", to: "car_logs#create"
  get "/make", to: "car_logs#form"
  get "/car_logs/delete/:id", to: "car_logs#delete"
  
end
