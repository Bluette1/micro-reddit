class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, length: { minimum: 2 }, uniqueness: true, null: false
      t.string :email, length: { minimum: 10 }, uniqueness: true, null: false
      t.string :title, length: { minimum: 2 }, uniqueness: true, null: false

      t.timestamps
    end
  end
end
