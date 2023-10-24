class TopController < ApplicationController
  def main
    if session[:login_uid]
      render 'top/main'
    else
      render 'top/login'
    end
  end
end
