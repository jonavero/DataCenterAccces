class SolicitudesController < ApplicationController

  #parte de los administradores para creacion y manipulacion de solicitudes .

def index
    @Solicitudes = Solicitud.paginate(:page => params[:page], :per_page => 8)
  end

  def show
    @Solicitud = Solicitud.find(params[:id])
  end

def showAdmin
  @Solicitud = Solicitud.find(params[:id])
end

def new
  @Solicitud= Solicitud.new
  @estatus=['Aprobada','Pendiente','Rechazada']
end

  def create
    @Solicitud= Solicitud.new(params_solicitud)
    if @Solicitud.save
      redirect_to '/user/inicio'
    else
      render 'solicitudes/new'
    end

  end

  def edit
    @Solicitud = Solicitud.find(params[:id])
  end

  def update
    @Solicitud =Solicitud.find(params[:id])
    if @Solicitud.update(params_solicitud)
      redirect_to '/inicio'
    else
      render 'edit'
    end

  end

  def updateEstatus
    @Solicitud= Solicitud.find(params[:id])
    if @Solicitud.update(params_estatus)
      redirect_to '/inicio'
    else
      render 'edit'
    end
  end


#parte de los usuarios para creacion y manipulacion de solicitudes.

  def indexUser
    @SolicitudesUser= Solicitud.where('CodigoEmpleado_id = ?',current_user.CodigoEmpleado).paginate(:page => params[:page], :per_page => 8)
  end





#

  private

  def params_solicitud
    params.require(:solicitud).permit(:Usuario,:Departamento,:Correo,:Funcion,:CodigoEmpleado_id,:Acompanante,:Motivo,:Estatus,:FechaVisita)
  end

  def params_solicitud_update
    params.require(:solicitud).permit(:HoraInicial,:HoraFinal)
  end

  def params_estatus
    params.require(:solicitud).permit(:Estatus)
  end



end
