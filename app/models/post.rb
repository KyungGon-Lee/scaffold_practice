class Post < ActiveRecord::Base
  validates :title, presence:true
  validates :content, presence:true
  # 유효성 검사
end
