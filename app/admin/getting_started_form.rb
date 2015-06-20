ActiveAdmin.register GettingStartedForm do
  menu priority: 2

  filter :id
  filter :business_name
  filter :number_of_employees
  filter :phone

  index do
    id_column
    column :business_name
    column :number_of_employees
    column :phone
    column :user do |obj|
      if obj.user.present?
        "#{obj.user.firstname} #{obj.user.lastname}"
      else 
        "[no user]"
      end
    end
    column :created_at
    actions
  end

end
