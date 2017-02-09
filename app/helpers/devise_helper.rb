# overrides the devise_error_messages! method and copies all errors to a flash notice array

module DeviseHelper
  def devise_error_messages!
    if resource.errors.full_messages.any?
        flash.now[:error] = resource.errors.full_messages
    end
    return ''
  end
end

# see application_helper.rb