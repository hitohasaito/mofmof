Rails.application.routes.draw do
  resources :estates do
    resources :stations
  end
end
