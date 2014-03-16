class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts, force: true do |t|
      t.text :title
      t.text :body
      t.timestamps
    end
  end
end
