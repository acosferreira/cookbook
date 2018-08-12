RailsAdmin.config do |config|

  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancancan

  config.actions do
    dashboard
    index
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end

  config.model Recipe do
    list do
      exclude_fields_if do
        type == :datetime
      end
      exclude_fields :id
    end
  end
  config.model User do
    list do
      exclude_fields_if do
        type == :datetime
      end
      exclude_fields :id
    end
  end
  config.model  Kind do
    list do
      exclude_fields_if do
        type == :datetime
      end
      exclude_fields :id
    end
  end
  config.model Ingredient do
    list do
      field :name
    end
    field :name
    field :measurement
  end
end
