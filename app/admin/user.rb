ActiveAdmin.register User do
 index do
    selectable_column
    column :id
    column :first_name
    column :email
    column :created_at
    column :admin
    column :password
    column :password_confirmation
    actions
  end

  form do |f|
    f.inputs "Identity" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.inputs "Role" do
      f.input :role
    end
    f.actions
  end

  permit_params :first_name, :email, :admin, :role, :password
end
