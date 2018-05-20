Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :lectures do 
    member do
      put "like", to: "lectures#upvote"
      put "dislike", to: "lectures#downvote"
      put "report", to: "lectures#report"
    end
  end
  resources :courses
  get 'home/index'
  root to: 'home#index'
  devise_for :users
  mount Commontator::Engine => '/commontator'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
