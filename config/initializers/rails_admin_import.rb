RailsAdmin.config do |config|
  # REQUIRED:
  # Include the import action
  # See https://github.com/sferik/rails_admin/wiki/Actions
  # config.actions do
  #   all
  #   import
  # end

  # Optional:
  # Configure global RailsAdminImport options
  # config.configure_with(:import) do |config|
  #   config.logging = true
  # end

  # Optional:
  # Configure model-specific options using standard RailsAdmin DSL
  # See https://github.com/sferik/rails_admin/wiki/Railsadmin-DSL
  config.model 'User' do
    import do
      include_all_fields
      mapping_key :email
    end
  end

  config.model 'Artefact' do
    import do
      include_all_fields
    end
  end

  config.model 'Story' do
    import do
      include_all_fields

    end
  end

  config.model 'Gallery' do
    import do
      include_all_fields
      mapping_key :title
    end
  end

  config.model 'Country' do
    import do
      include_all_fields
    end
  end

  config.model 'Location' do
    import do
      include_all_fields
    end
  end
end