class RegistrationsController < Devise::RegistrationsController

    def create
        build_resource(sign_up_params)
        if resource.save
            respond_with resource, :location => after_sign_up_path_for(resource)
        else
            clean_up_passwords
            respond_with resource
        end
    end  
    # you will get the full registration controller in devise github repo
    
    private
    
    def sign_up_params
        params.require(:user).permit(:email, :firstname, :lastname, :password, :password_confirmation,:image)
    end
    end
        