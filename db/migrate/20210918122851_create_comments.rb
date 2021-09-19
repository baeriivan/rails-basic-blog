class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :username
      t.string :email
      t.text :content
      t.integer :post_id

      t.timestamps
    end
  end
end
