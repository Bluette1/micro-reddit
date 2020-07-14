class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, length: { minimum: 2 }, uniqueness: true, null: false
      t.string :body, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
