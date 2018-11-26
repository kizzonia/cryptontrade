ActiveAdmin.register Withdraw do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
permit_params :amount, :payment_method, :email, :user_id
#
# or
#
form do |f|

 f.inputs do
   f.input :user_id, :label => 'Users', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
   f.input :amount
   f.input :payment_method
   f.input :email



 end
 f.submit :submit
end
def display_name
 self.email
end
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
