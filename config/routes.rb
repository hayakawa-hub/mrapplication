Rails.application.routes.draw do
  root to: "plans#toppage"

  get 'static/terms'
  get 'static/privacy'
  devise_for :users, controllers: { registrations: 'users/registrations', confirmations: 'users/confirmations'} # controllers:以下追加
 # thanksページを表示させるルーティングを追加
 devise_scope :user do
     get 'users/thanks' => 'users/registrations#thanks'
   end
   # devise_scopeで設定しないと、request.env[“devise.mapping”]でroutesの設定がされない
   def devise_scope(scope)
     constraint = lambda do |request|
       request.env["devise.mapping"] = Devise.mappings[scope]
       true
     end
     constraints(constraint) do
       yield
     end
   end


   resources :users, only: [:show, :destroy]
  resources:plans, only:[:index,:show, :create, :destroy] do
    collection do
      get "search"
      get "toppage"

      
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
