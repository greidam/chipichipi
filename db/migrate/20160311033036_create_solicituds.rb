class CreateSolicituds < ActiveRecord::Migration
  def change
    create_table :solicituds do |t|
      t.string :reference
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
