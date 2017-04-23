class CreateBkIntros < ActiveRecord::Migration[5.0]
  def change
    create_table :bk_intros do |t|
      t.string :title
      t.integer :price
      t.text :setsumei
      t.integer :hyouka

      t.timestamps
    end
  end
end
