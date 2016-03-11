ActiveAdmin.register Cliente do
    menu priority: 2 # so it's on the very left
  permit_params :name, :email, :password, :password_confirmation

  # index do
  #   selectable_column
  #   id_column
  #   column :name
  #   column :email
  #   column :current_sign_in_at
  #   column :sign_in_count
  #   column :created_at
  #   actions
  # end
  #
  # filter :name
  # filter :email
  # filter :current_sign_in_at
  # filter :sign_in_count
  # filter :created_at
  index do
    selectable_column
    column "Nombre", :name do |cliente|
    link_to cliente.name, admin_cliente_path(cliente)
  end

  column "Solicitudes", :solicitudes_del_cliente do |cliente|
  link_to cliente.solicituds.size, admin_cliente_solicituds_path(cliente)
  end

  column "Pedidos", :pedidos_del_cliente do |cliente|
  link_to cliente.pedidos.size, admin_cliente_pedidos_path(cliente)

  end

  actions
end

  member_action :pedidos do
    @pedidos = Cliente.find(params[:id]).pedidos
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
