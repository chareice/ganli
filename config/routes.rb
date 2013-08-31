Ganli::Application.routes.draw do
  get "/admin" ,to: "admin/admin#index"
  root "pages#index"

  get "/register",to: "users#new"
  resources :users,only:[:create]
  resources :sessions, only: [:create, :destroy]

  namespace 'admin' do
    root "admin#index"
    resources :articles do

    end
    resources :classifications,only: [:index,:new,:create]
    resources :navigations
    resources :pages
    resources :admin_menus,only: [:index,:new,:create]
    resources :permissions
    resources :groups
    resources :users
    resources :affair_form_instance_audit_logs,only:[:index,:new,:create]
    resources :affair_forms do
      collection do
        get 'apply'
        get 'propose'
      end
      resources :affair_form_instances
    end
    resources :affair_form_instances,only:[:show,:destroy]
    resources :documents do
      collection do
        get 'audit'
      end
      member do
        get 'audit_download'
        get 'download'
      end
    end
    resources :friendly_links
    resources :lunches
    resources :guest_messages
  end

  get '/bbs',to: 'bbs/topics#index'
  
  namespace 'bbs' do
    resources :topics do
      resources :replies
    end
  end
  
  get '/login',to:'sessions#new'
  match '/logout',to:'sessions#destroy',via: :delete
end
