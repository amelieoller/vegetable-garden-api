Rails.application.routes.draw do
  namespace :api do
    resources :crops, except: [:new, :edit]
    resources :varietals, except: [:new, :edit]
    resources :plantings, except: [:new, :edit]
  end
end
