class AdminController < ApplicationController
  def index
    @admins = Admin.paginate(page: params[:page],per_page: 5)
  end
  def destroy
    @admin.destroy

    respond_to do |format|
      format.html { redirect_to admin_index_path, notice: "Admin was successfully destroyed." }
      format.json { head :no_content }
    end

  def admin_params
    params.require(:admin).permit(:name, :email, :password)
  end
end
end
