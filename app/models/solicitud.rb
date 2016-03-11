class Solicitud < ActiveRecord::Base
  belongs_to :cliente
  has_many :pedido
end
