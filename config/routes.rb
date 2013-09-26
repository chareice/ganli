Ganli::Application.routes.draw do
  captcha_route
  get "/admin" ,to: "admin/admin#index"
  root "pages#index"

  resources :users,only:[:create,:edit,:update]
  resources :sessions, only: [:create, :destroy]
  resources :pages,only:[:show]
  resources :articles,only:[:index,:show] do  
  end
  resources :guest_messages,only:[:create,:new,:index]
  get "/classification/:id",to: "articles#classification",as: "classification"
 
  scope '/register' do
    get "/",to: "register#email_validate_from_user",as: "register"
    #get "/",to: "register#email",as: "register"
    #post "/email_validate",to: "register#email_validate"
    #get "/user_validate",to: "register#email_validate_from_user"
  end

  namespace 'admin' do
    root "admin#index"
    resources :articles do

    end
    resources :classifications
    resources :navigations
    resources :pages
    resources :admin_menus,only: [:index,:new,:create]
    resources :permissions
    resources :groups
    resources :users do
      collection do
        get 'audit'
      end
      member do
        post 'audit_pass'
      end
    end
    resources :affair_form_instance_audit_logs,only:[:index,:new,:create]
    resources :affair_forms do
      collection do
        get 'apply'
        get 'propose'
      end
      resources :affair_form_instances
    end
    resources :affair_form_instances,only:[:show,:destroy] do
      collection do
        get 'list'
      end
      member do
        get 'admin_view'
      end
    end
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
    resources :friendly_link_classifications
    resources :lunches
    resources :guest_messages
    resources :left_navs
    resources :messages do
      collection do
        get 'outbox'
        get 'new_message_notice'
        get 'download*path',action: :download,as: :download#,constraints: {path: /[^\/]*/}
      end
      member do
        get 'preview'
      end
    end
    
    resources :announcements do
      collection do
        get 'view_index'
      end
    end

    post 'files/imageup',to: 'files#imageup'
    post 'files/fileup',to: 'files#fileup'
    post 'files/imagemanger',to: 'files#imagemanger'
    get 'files/thumb/:imagename',to: 'files#thumb'

  end

  get '/bbs',to: 'bbs/topics#index'
  
  namespace 'bbs' do
    resources :replies,only:[:destroy] do
      member do
        post 'change_status'
      end
    end

    resources :topics do
      collection do
        get 'audit'
        get 'replies_audit'
      end
      member do
        get 'show_content'
        get 'show_reply_content'
        post 'change_status'
      end
      resources :replies do
        collection do
          get 'audit'
        end
        member do
          post 'change_status'
        end
      end
    end
  end

  get '/login',to:'sessions#new'
  get '/profile',to: 'users#profile',as: "profile"
  patch 'edit_profile',to: 'users#edit_profile'
  match '/logout',to:'sessions#destroy',via: :delete
end
