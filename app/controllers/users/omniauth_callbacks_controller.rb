class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_google_oauth2(request.env["omniauth.auth"])

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
    else
      session["devise.user_data"] = request.env["omniauth.auth"].uid
      redirect_to new_user_registration_url
    end
  end
  
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"])

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
    else
      session["devise.user_data"] = request.env["omniauth.auth"].uid
      redirect_to new_user_registration_url
    end
  end

  def github
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_github_oauth(request.env["omniauth.auth"])

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Github"
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
    else
      session["devise.user_data"] = request.env["omniauth.auth"].uid
      redirect_to new_user_registration_url
    end
  end

  def failure
      redirect_to root_path
  end
end