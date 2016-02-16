Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :drinks, except: [:new, :edit]
      resources :proportions, except: [:new, :edit]
    end
  end
end
