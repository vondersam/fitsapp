ActiveAdmin.register Message do
  permit_params :sender, :recipient, :content
  # index do
  #     selectable_column
  #     column :id
  #     column :sender
  #     column :recipient
  #     column :created_at
  #     actions
  # end
end
