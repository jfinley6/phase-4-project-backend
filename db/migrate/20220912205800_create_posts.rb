class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :subject
      t.text :body
      t.string :image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
