class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  #niquenessによってオブジェクトが保存される直前に、属性の値が一意（unique）であり重複していないことを検証
  validates :user_id, uniqueness: { scope: :post_id }

end
