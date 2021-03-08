Rails.application.routes.draw do
  devise_for :users     # deviseを使用する際にURLとしてusersを含む
  root to: 'homes#top'  # topページをルートパスにする

end
