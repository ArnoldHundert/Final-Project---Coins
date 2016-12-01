class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, limit: 30
      t.string :post
      t.attachment :post_image

      t.timestamps
    end
  end
end
