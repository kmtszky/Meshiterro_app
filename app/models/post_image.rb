class PostImage < ApplicationRecord

  # 一つのUserモデルのみを参照するため、モデル名は単数形「user」
  belongs_to :user
  # 画像アップ用のメソッドattachmentを追加、フィールド名にimageを指定（refileルール）
  attachment :image
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
