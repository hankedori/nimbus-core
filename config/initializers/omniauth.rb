Rails.application.config.middleware.use OmniAuth::Builder do #TODO: THIS NEEDS TO BE IN AN ENV VARIABLE CANNOT BE EXPOSED LIKE THIS!!!!!
  provider :facebook, 328870160820893, 'ad1469a503d365336516b5fff2081521' # REAL
  provider :google_oauth2, '910589255887-opsn7o4m004fhnpdbq1t0qdmmu3fh8fs.apps.googleusercontent.com', '4XezlM7aFECKda-IH4EgX7GD'
end

DeviseTokenAuth::OmniauthCallbacksController.module_eval do
  def omniauth_params
    if !defined?(@_omniauth_params)
      if request.env['omniauth.params'] && request.env['omniauth.params'].any?
        @_omniauth_params = request.env['omniauth.params'].merge("auth_origin_url"=> request.env['omniauth.origin'])
      elsif session['dta.omniauth.params'] && session['dta.omniauth.params'].any?
        @_omniauth_params ||= session.delete('dta.omniauth.params')
        @_omniauth_params
      elsif params['omniauth_window_type']
        @_omniauth_params = params.slice('omniauth_window_type', 'auth_origin_url', 'resource_class', 'origin')
      else
        @_omniauth_params = {}
      end
    end
    @_omniauth_params

  end

  def omniauth_success
    get_resource_from_auth_hash
    create_token_info
    set_token_on_resource
    create_auth_params

    if resource_class.devise_modules.include?(:confirmable)
      # don't send confirmation email!!!
      @resource.skip_confirmation!
    end

    sign_in(:user, @resource, store: false, bypass: false)
    Sunwukong.notifier.ping("A new user has signed up! Please welcome " + current_api_user.name + " to Nimbus. User number: " + current_api_user.id.to_s, channel: '#users')

    @resource.save!

    yield @resource if block_given?

    render_data_or_redirect('deliverCredentials', @auth_params.as_json, @resource.as_json)
  end

  def redirect_callbacks

    # derive target redirect route from 'resource_class' param, which was set
    # before authentication.
    devise_mapping = [request.env['omniauth.params']['namespace_name'],
                     request.env['omniauth.params']['resource_class'].underscore.gsub('/', '_')].compact.join('_')
    redirect_route = "#{request.protocol}#{request.host_with_port}/#{Devise.mappings[devise_mapping.to_sym].fullpath}/#{params[:provider]}/callback"    # preserve omniauth info for success route. ignore 'extra' in twitter
    # auth response to avoid CookieOverflow.
    session['dta.omniauth.auth'] = request.env['omniauth.auth'].except('extra')
    session['dta.omniauth.params'] = request.env['omniauth.params'].merge("auth_origin_url"=> request.env['omniauth.origin'])

    redirect_to redirect_route
  end

  def render_data_or_redirect(message, data, user_data = {})

    # We handle inAppBrowser and newWindow the same, but it is nice
    # to support values in case people need custom implementations for each case
    # (For example, nbrustein does not allow new users to be created if logging in with
    # an inAppBrowser)
    #
    # See app/views/devise_token_auth/omniauth_external_window.html.erb to understand
    # why we can handle these both the same.  The view is setup to handle both cases
    # at the same time.
    if ['inAppBrowser', 'newWindow'].include?(omniauth_window_type)
      render_data(message, user_data.merge(data))

    elsif auth_origin_url # default to same-window implementation, which forwards back to auth_origin_url

      # build and redirect to destination url
      redirect_to DeviseTokenAuth::Url.generate(auth_origin_url, data.merge(blank: true))
    else

      # there SHOULD always be an auth_origin_url, but if someone does something silly
      # like coming straight to this url or refreshing the page at the wrong time, there may not be one.
      # In that case, just render in plain text the error message if there is one or otherwise
      # a generic message.
      fallback_render data[:error] || 'An error occurred'
    end
  end

  def assign_provider_attrs(user, auth_hash)
    user.assign_attributes({
      nickname: auth_hash['info']['nickname'],
      name:     auth_hash['info']['name'],
      first_name: auth_hash['info']['name'].split(' ', 2)[0],
      last_name: auth_hash['info']['name'].split(' ', 2)[1],
      image:    auth_hash['info']['image'],
      email:    auth_hash['info']['email']
    })
  end
end
