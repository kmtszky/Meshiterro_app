Rails.application.routes.draw do
  devise_for :users
  # topページをルートパスにする：
  root to: 'homes#top'

end
