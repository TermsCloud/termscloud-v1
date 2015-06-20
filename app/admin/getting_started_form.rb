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

  show do |form|
    attributes_table do

      row :id
      row :business_name
      row :number_of_employees
      row :phone
      row :user 
      row :website_terms_of_use do status_tag((form.website_terms_of_use == '1') ? 'yes' : 'no') end
      row :acceptable_use_policy do status_tag((form.acceptable_use_policy == '1') ? 'yes' : 'no') end
      row :privacy_and_cookies_policy do status_tag((form.privacy_and_cookies_policy == '1') ? 'yes' : 'no') end
      row :other 
      row :created_at

    end
  end


end
