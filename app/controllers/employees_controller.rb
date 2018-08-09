class EmployeesController < InheritedResources::Base
  respond_to :js, only: [:edit, :destroy,:create,:update]
  before_action :authenticate_admin!

  def index
    @employees = Employee.search(params[:search]).paginate(:page => params[:page], :per_page => 2).order('id desc')
  end

  def create
    @employees = Employee.search(params[:search]).paginate(:page => params[:page], :per_page => 2).order('id desc')
    super
  end

  def update
    @employees = Employee.search(params[:search]).paginate(:page => params[:page], :per_page => 2).order('updated_at desc')
    super
  end

  def destroy
    @employees = Employee.search(params[:search]).paginate(:page => params[:page], :per_page => 2).order('id desc')
    super
  end

  protected

  def permitted_params
    params.permit(employee: [:first_name, :last_name,:email, :address, :id, :password])
  end
end
