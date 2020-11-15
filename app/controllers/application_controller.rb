class ApplicationController < ActionController::Base
  def after_sign_in_path_for(_resource)
    dashboards_path
  end
end
