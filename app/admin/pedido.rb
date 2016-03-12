ActiveAdmin.register Pedido do
  controller do
      nested_belongs_to :cliente, :solicitud, optional: true
      belongs_to :estado, optional: true

  end
  permit_params :name, :amount, :description, :solicitud_id, :estado_id

  index do
      selectable_column
      column "Nombre", :name
      column "Monto", :amount
      column "Descripción", :description
        column "Estado", :estado

    actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
end
