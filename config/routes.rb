Rails.application.routes.draw do
  
 
  root 'quizzes#index'
  
  resources :quiz_options
  resources :questions
  resources :quizzes do
    resources :personalities, only: [:new, :create]
  end
  resources :personalities, except: [:new, :create]

end
