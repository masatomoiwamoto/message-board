class Message < ActiveRecord::Base
     # 名前は必須入力かつ20文字以内
  validates :name , length: { maximum: 20 } , presence: true
  # 内容は必須入力かつ2文字以上30文字以下
  validates :body , length: { minimum: 2, maximum: 30 } , presence: true
  # 年齢(age)に0以上の数字だけ入力が可能
  validates :age , numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # 年齢(age)に110以下以下の数字数字だけ入力が可能
  validates :age , numericality: { only_integer: true, less_than_or_equal_to: 110 }
end
