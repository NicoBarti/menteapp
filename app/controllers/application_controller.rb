class ApplicationController < ActionController::Base

  around_action :switch_locale

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url
  end

end
