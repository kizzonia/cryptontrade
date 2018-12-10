ActiveAdmin.register Withdraw do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :user_id, :amount, :payment_method, :email, :acctName, :accountNumber, :bankName, :bitcoin, :status
#
# or
#

#
# or
#
form do |f|

 f.inputs do
   f.input :user_id, :label => 'Users', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
   f.input :amount
   f.input :payment_method
   f.input :email
   f.input :acctName
   f.input :accountNumber
   f.input :bankName
   f.input :bitcoin
   f.input :status



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
