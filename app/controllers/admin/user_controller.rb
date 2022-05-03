class Admin::UserController < Admin::BaseController
    before_action :set_user, only: [:show, :edit, :update, :destroy, :orders, :reviews]
    before_action :check_for_admin
    def index
        @users = User.all
        render :index
    end

    def show
        render :show
    end

    def check_for_admin
        redirect_to root_path, alert: "You dont have access" unless current_user.try(:admin?)
    end

    def set_user
        @user = User.find(params[:id])
    end

    def destroy
          @user.destroy
          flash[:notice] = "Account for #{@user.first_name} deleted."
          redirect_to admin_user_index_path
    end

    def update
        if @user.update(user_params)
            @user.update(admin:true) if params["admin"] == "1"
            @user.update(admin:false) unless params["admin"] == "1"
          flash[:notice] = "Profile updated!"
          redirect_to admin_user_path
        else
          render :edit
        end
    end

    def edit
          render :edit
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :street_name, :city_name, :zipcode, :state, :credit_card_num, :phone_num)
    end

    def export
        @user = User.find(params["id"])
        respond_to :docx, :xlsx
        respond_to do |format|
          format.docx do
            render docx: 'export', filename: "#{@user.first_name}.docx"
          end
          format.xlsx do
            render xlsx: 'export', filename: "#{@user.first_name}"
          end
        end
    end
    
    def export_json
        @user = User.find(params["id"])
        file = File.write(Rails.root.join('app', 'assets', 'files', "#{@user.first_name}.json"), @user.to_json)
        send_data(@user.to_json, filename: "#{@user.first_name}.json", type: :json, disposition: "attachment",)
    end
end