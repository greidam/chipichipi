class AddEstadoToPedidos < ActiveRecord::Migration
  def change
    add_reference :pedidos, :estado, index: true, foreign_key: true
  end
end
