Rails.application.routes.draw do
  devise_for :users     # deviseを使用する際にURLとしてusersを含む
  root to: 'homes#top'  # topページをルートパスにする

  #コメントは、投稿画像に対してコメントされるため、post_commentsは、post_imagesに結びつく ⇒ 親子関係になる
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

  resources :users, only:[:show, :edit]

end
