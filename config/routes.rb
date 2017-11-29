Rails.application.routes.draw do
  get 'feedbacks/index'

  get 'feedbacks/new'

  get 'feedbacks/update'

  get '/orders', to: "orders#index"
  get '/orders/:order_id', to: "orders#show"
  get '/orders/:order_id/feedbacks', to: "feedbacks#new"
  post '/orders/:order_id/feedbacks', to: "feedbacks#update"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
