class Pedido < ActiveRecord::Base
  belongs_to :solicitud
end
