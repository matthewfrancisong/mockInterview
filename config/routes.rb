Rails.application.routes.draw do


root to: 'orders#index'
  get '/orders', to: "orders#index"
  get '/orders/:order_id', to: "orders#show"
  get '/orders/:order_id/feedbacks', to: "feedbacks#index"
  post '/orders/:order_id/feedbacks', to: "feedbacks#update"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
