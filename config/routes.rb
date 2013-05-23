AppointmentTrackerEasy::Application.routes.draw do
  root to: "appointments#index"

  resources :appointments


  resources :applicants


  resources :instructors

end
