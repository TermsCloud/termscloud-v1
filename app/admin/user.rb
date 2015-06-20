ActiveAdmin.register User do
  menu priority: 1

  filter :id
  filter :firstname
  filter :lastname
  filter :email
  
  index do
    id_column
    column :firstname
    column :lastname
    column :email
    column :website_url
    column :created_ar
    actions
  end

end
