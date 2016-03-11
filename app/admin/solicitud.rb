ActiveAdmin.register Solicitud do
  menu priority: 3 # so it's on the very left
belongs_to :cliente, optional: true
permit_params :reference, :cliente_id

index do
    selectable_column
    column "Referencia", :reference do |solicitud|
      link_to solicitud.reference, admin_cliente_solicitud_path(solicitud.cliente,solicitud)
    end

    column "Pedidos", :pedidos_de_la_solicitud do |solicitud|
      link_to solicitud.pedidos.count, admin_solicitud_pedidos_path(solicitud)
    end

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
