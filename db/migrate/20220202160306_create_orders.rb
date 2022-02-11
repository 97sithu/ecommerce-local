class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.date :orderDate
      t.string :status
      t.integer :quantity
      t.integer :totalPrice
      t.references :cart, null: true, foreign_key: true
      t.references :customer, null: true, foreign_key: true
      t.references :good, null: true, foreign_key: true

      t.timestamps
    end
  end
end
