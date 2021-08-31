class AccesosController < ApplicationController
  def index
    @AccesosEmergente = Acceso.paginate(:page => params[:page], :per_page => 8)
  end

  def show
    @Acceso = Acceso.find(params[:id])
  end

  def showUser
    @Acceso = Acceso.find(params[:id])
  end




  def create
    @Acceso= Acceso.new(params_acceso)
    if @Acceso.save
      redirect_to '/login'
    else
  render 'sessions/new'
    end

  end

  def indexUser
    @AccesoUser= Acceso.where('CodigoEmpleado = ?',current_user.CodigoEmpleado).paginate(:page => params[:page], :per_page => 8)
  end






  private

  def params_acceso
    params.require(:acceso).permit(:Nombre,:Departamento,:Correo,:Funcion,:CodigoEmpleado,:Companero,:Mensaje,:Empresa,:Telefono)
  end


end
