class Relationship < ApplicationRecord
    # 中間テーブルのため、belongs_toは2つ必要
    # class_name: "User" で、Userモデルを参照することを明示
    # どちらのユーザーのデータもUserモデルから持ってくるのだが、テーブル名をあえて分別している。
    belongs_to :follower, class_name: "User"
    belongs_to :followed, class_name: "User"
end
