Rails.application.routes.draw do

  resources :admin_events
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :conrollers => { registrations: 'users/registrations', sessions: 'users/sessions'}
  resources :event_calendars
  resources :event_feedbacks
  resources :meeting_types
  resources :prospective_donors do
    post :upgrade_donor
  end
  resources :event_volunteers
  resources :consent_forms
  resources :devise
  resources :case_studies
  resources :events do
    resources :event_volunteers
    resources :consent_forms
    resources :admin_events
    post :search, on: :collection
    get :spaces_left
  end
  resources :volunteers
  resources :donations
  resources :donors
  resources :club_infos
  resources :club_data do
    post :search, on: :collection
  end
  resources :clubs
  resources :users
  resources :trusts
  resources :commercials
  resources :newsletter

  # devise_for :users, :skip => [:registrations]                                          
  # as :user do
  #   get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
  #   put 'users' => 'devise/registrations#update', :as => 'user_registration'
  # end          
  
  match "/403", to: "errors#error_403", via: :all
  match "/404", to: "errors#error_404", via: :all
  match "/422", to: "errors#error_422", via: :all
  match "/500", to: "errors#error_500", via: :all

  get :ie_warning, to: 'errors#ie_warning'
  get :javascript_warning, to: 'errors#javascript_warning'
  get '/events/:event_individual', to: 'pages#event_id_page', as: :event_id_page
  get '/clubs/:club_individual', to: 'pages#club_id_page', as: :club_id_page
  match '/users',   to: 'users#index',   via: 'get'
  root to: "pages#home"
  
  #root to: "pages#home"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
