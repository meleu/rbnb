class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
