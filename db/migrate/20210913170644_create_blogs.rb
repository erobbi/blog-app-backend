class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :description
      t.text :content
      t.belongs_to :user, null: false, foreign_key: true
      t.string :img_url
      t.integer :likes

      t.timestamps
    end
  end
end
