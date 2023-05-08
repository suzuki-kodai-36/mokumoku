class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
      # フォローしているユーザーのid
      t.integer :follower_id, null: false
      # フォローされているユーザーのid
      t.integer :followed_id, null: false

      t.timestamps
    end
  end
end
