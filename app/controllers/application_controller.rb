class ApplicationController < ActionController::Base
    before_action :authenticate_user! 
    # before using the app authenticate the user.
end