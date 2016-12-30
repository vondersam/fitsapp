ActiveAdmin.register Message do
  permit_params :sender, :recipient, :subject, :content
    index do
      selectable_column
      column :id
      column :sender
      column :subject
      column :recipient
      column :created_at
      actions
  end
end
