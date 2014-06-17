class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.integer :post_id

      t.timestamps
    end
  end
end
