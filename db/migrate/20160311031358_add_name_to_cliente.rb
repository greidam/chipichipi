class AddNameToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :name, :string
  end
end
