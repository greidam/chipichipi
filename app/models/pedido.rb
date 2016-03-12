class Pedido < ActiveRecord::Base
  belongs_to :solicitud
  belongs_to :estado
end
