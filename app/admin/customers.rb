ActiveAdmin.register Customer do
  permit_params :name, :phone, :email, :note
end
