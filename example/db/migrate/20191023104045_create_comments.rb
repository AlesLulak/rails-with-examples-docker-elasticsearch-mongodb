class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :email_id
      t.text :content

      t.timestamps null: false
    end
  end
end
