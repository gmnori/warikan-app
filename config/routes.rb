Rails.application.routes.draw do
  # get 'warikan/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :warikan
  root 'warikan#index'
  post 'warikan/settaiCalc1' => "warikan#settaiCalc1"
  post 'warikan/settaiCalc2' => "warikan#settaiCalc2"
  post 'warikan/onthejobCalc1' => "warikan#onthejobCalc1"
  post 'warikan/onthejobCalc2' => "warikan#onthejobCalc2"
  post 'warikan/friendsCalc1' => "warikan#friendsCalc1"
  post 'warikan/friendsCalc2' => "warikan#friendsCalc2"
  
  get 'warikan/settai1' => "warikan#settai1"
  get 'warikan/settai2' => "warikan#settai2"
  get 'warikan/onthejob1' => "warikan#onthejob1"
  get 'warikan/onthejob2' => "warikan#onthejob2"
  get 'warikan/friends1' => "warikan#friends1"
  get 'warikan/friends2' => "warikan#friends2"
  

end
