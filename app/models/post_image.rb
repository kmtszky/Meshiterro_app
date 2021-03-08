class PostImage < ApplicationRecord

  # 一つのUserモデルのみを参照するため、モデル名は単数形「user」
  belongs_to :user

end
