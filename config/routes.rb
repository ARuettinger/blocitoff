Rails.application.routes.draw do

  devise_for :users
  #unauthenticated - signed out users
  #authenticated - signed in users
  unauthenticated do
    # get "/", to: "welcome#index", as: :root
    root "welcome#index"
  end

  authenticated do
    # get "/", to: "users#show", as: :authenticated_root
    root "users#show", as: :authenticated_root
  end
end
