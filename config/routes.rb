Rails.application.routes.draw do
  resources :mystrings
  resources :musical_fragments
  resources :actions
  resources :finger_restraints
  resources :focus
  resources :fingerings
  resources :left_hand_techniques
  resources :positions
  resources :musical_phrasings
  resources :bow_signs
  resources :bow_techniques
  resources :bow_articulations
  resources :bow_precise_locations
  resources :bow_locations
  resources :bow_portions
  resources :silences
  resources :rhythmic_types
  resources :modificateurs
  resources :measure_units
  resources :voices
  resources :intervalles
  resources :type_accords
  resources :harmonique_natures
  resources :caracteres
  resources :nuances
  resources :source_titles
  resources :piece_types
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
   root "musical_fragments#index"
end
