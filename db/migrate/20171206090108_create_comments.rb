# migration for create table comments
class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.string :info
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
