ActiveAdmin.register Trade do
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

    f.inputs do
 f.input :user_id, :label => 'Users', :as => :select, :collection => User.all.map{|u| ["#{u.email}, #{u.first_name}", u.id]}
      f.input :currency, :as => :select, :collection => ['USD', 'GB', 'AUD/USD', 'AUD/GB']
      f.input :deposit
      f.input :expiration
      f.input :status, as: :select, :collection => ["WON", "LOSE"]
      f.input :tradetype
      f.input :entry
      f.input :rate
      f.input :return
    end
    f.submit :submit
  end


permit_params  :user_id, :trade_id, :currency, :deposit, :expiration, :status, :tradetype, :entry, :rate, :return

end
