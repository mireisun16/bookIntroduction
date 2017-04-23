class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :bk_intro_id
      t.string :nickname
      t.text :comment

      t.timestamps
    end
  end
end
