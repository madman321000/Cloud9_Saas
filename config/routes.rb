Rails.application.routes.draw do
    devise_for :installs
    root to: "pages#home"
    devise_for :users, controllers: { registrations: 'users/registrations' }
    resources :users do
        resource :profile
    end
    get 'about', to: 'pages#about'
    resources :contacts, only: :create
    get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
