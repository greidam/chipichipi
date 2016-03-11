class Cliente < ActiveRecord::Base

  has_many :solicitud
  has_many :pedido, through: :solicitud

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
