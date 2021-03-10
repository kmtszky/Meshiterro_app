class PostImage < ApplicationRecord
  # 画像アップ用のメソッドattachmentを追加、フィールド名にimageを指定（refileルール）
  attachment :image

  # 一つのUserモデルのみを参照するため、モデル名は単数形「user」
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :shopname, presence: true
  validates :image, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
