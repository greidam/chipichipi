class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :name
      t.integer :amount
      t.text :description
      t.references :solicitud, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
