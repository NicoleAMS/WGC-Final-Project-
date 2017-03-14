RailsAdmin.config do |config|

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==

  # rails admin only available to admins or curators
  config.authorize_with :cancan

    config.authorize_with do
      unless current_user.admin_role? || current_user.curator_role?
         flash[:error] = "You are not authorized to access this page!"
        redirect_to main_app.root_path
      end
    end


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    import 
  end

  config.model 'User' do
    import do
      include_all_fields
      mapping_key :email
    end
  end

  config.model 'Story' do
    include_all_fields
    mapping_key :title 
  end 
  
end
