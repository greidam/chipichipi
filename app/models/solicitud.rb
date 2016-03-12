class Solicitud < ActiveRecord::Base
  belongs_to :cliente
  has_many :pedidos

  def name
   "#{reference}"
 end
end
