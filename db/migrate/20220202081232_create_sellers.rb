class CreateSellers < ActiveRecord::Migration[6.0]
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.text :intro

      t.timestamps
    end
  end
end
