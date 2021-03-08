class PostImage < ApplicationRecord

  # 一つのUserモデルのみを参照するため、モデル名は単数形「user」
  belongs_to :user
  # 画像アップ用のメソッドattachmentを追加、フィールド名にimageを指定（refileルール）
  attachment :image

end
