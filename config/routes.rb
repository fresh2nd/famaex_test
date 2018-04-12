Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :company_aggrupations,       only: [:show]
      resources :companies,                 only: [:show]
      resources :groups,                    only: [:show]
      resources :spaces,                    only: [:show]
    end
  end

end
