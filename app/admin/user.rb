ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

form do |f|
    f.inputs "Member Details" do
        f.input :profile
        f.input :name
        f.input :email
        f.input :dob
        f.input :gender
        f.input :dob
        f.input :level
        f.input :password
        f.input :password_confirmation
    end
    f.button :Submit
end

permit_params :email, :name , :dob , :gender , :profile , :password , :password_confirmation , :level

end
