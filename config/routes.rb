Rails.application.routes.draw do

  devise_for :users
  resources :event_calendars
  resources :event_feedbacks
  resources :meeting_types
  resources :prospective_donors
  resources :consent_forms
  resources :case_studies
  resources :events
  resources :volunteers
  resources :donations
  resources :donors
  resources :club_infos
  resources :clubs
  match "/403", to: "errors#error_403", via: :all
  match "/404", to: "errors#error_404", via: :all
  match "/422", to: "errors#error_422", via: :all
  match "/500", to: "errors#error_500", via: :all

  get :ie_warning, to: 'errors#ie_warning'
  get :javascript_warning, to: 'errors#javascript_warning'
  get '/events/:event_individual', to: 'pages#event_id_page', as: :event_id_page
  
  #root to: "pages#home"
  root to: "event_calendars#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
