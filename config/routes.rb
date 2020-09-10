Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end

# アクションプラン
# ①デバイスを導入し直す
# ②% rails db:drop
# ③% rails db:create
# ④% rails db:migrate
# ⑤サーバー再起動

