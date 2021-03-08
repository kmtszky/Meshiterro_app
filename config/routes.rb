Rails.application.routes.draw do
  devise_for :users     # deviseを使用する際にURLとしてusersを含む
  root to: 'homes#top'  # topページをルートパスにする

  resources :post_images, only: [:new, :create, :index, :show, :destroy]

end
