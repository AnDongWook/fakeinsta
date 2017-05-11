class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :content
      t.interger :post_id
      t.timestamps null: false
    end
  end
end
