class ApplicationController < ActionController::Base
    def create
        user = User.find_by(uid: params[:uid])
        if user && user.pass == params[:pass]
            session[:login_uid] = user.uid
            redirect_to '/top/main'
        else
            render 'top/error'
        end
    end
    
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end
end
