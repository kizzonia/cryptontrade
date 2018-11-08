ActiveAdmin.register Account do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :balance, :user_id, :address, :slug, :capital, :roi, :guranted, :gross_pl, :net_pl

  form do |f|

    f.inputs do
      f.input :user_id, :label => 'Users', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
      f.input :capital
      f.input :roi
      f.input :balance
      f.input :guranted
      f.input :gross_pl
      f.input :net_pl


    end
    f.submit :submit
  end
  def display_name
    self.email
  end
  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end


end
