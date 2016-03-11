class Cliente < ActiveRecord::Base

  has_many :solicituds
  has_many :pedidos, through: :solicituds

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
