class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.integer :price, null: false, default: 0
      t.references :owner, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
