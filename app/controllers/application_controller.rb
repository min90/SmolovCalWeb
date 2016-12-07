class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def allow_iframe_requests
    response.headers.delete('X-Frame-Options')
  end
end
