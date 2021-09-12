class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :img_url
      t.string :name
      t.date :birthdate
      t.string :email

      t.timestamps
    end
  end
end
