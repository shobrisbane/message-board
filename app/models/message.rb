class Message < ActiveRecord::Base
  # 名前は必須入力かつ20文字以内
  validates :name , length: { maximum: 20 } , presence: true
  # 内容は必須入力かつ2文字以上30文字以下
  validates :body , length: { minimum: 2, maximum: 30 } , presence: true
 #年齢(age)に 0以上かつ150以下の数字
 validates :age , grater_than: 0, less_than: 150 , presence: true, numericality: true
end