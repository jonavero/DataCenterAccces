class UsuariosController < ApplicationController
  def index
  @Usuario= Usuario.new

    @Usuarios = if params[:CodigoEmpleado]
                  Usuario.where('CodigoEmpleado LIKE ?', "%#{params[:CodigoEmpleado]}%")
                else

                  Usuario.paginate(:page => params[:page], :per_page => 8)
                end
  end

  def ver
    @Usuario = Usuario.find(params[:id])
  end

  def editar
    @usuario = Usuario.find(params[:id])
  end

  def new
    @Usuario =Usuario.new
    @Estatus=['Activo','Inactivo']
  end

  def create
    @Usuario =Usuario.new(params_user)
    if @Usuario.save
      redirect_to users_path, :notice => 'Usuario creado correctamente'
    else
      render 'new'
    end
  end

  def edit
    @Usuario=Usuario.find(params[:id])
    @Estatus=['Activo','Inactivo']

  end

  def update
    @Usuario=Usuario.find(params[:id])
    if @Usuario.update(params_user)
      redirect_to login_path,:notice => 'Usuario actualizado correctamente'
    else
      render 'edit'
    end
  end

  def delete
    @Usuario=Usuario.find(params[:id])
    if @Usuario.destroy
      redirect_to users_path, :notice => 'Usuario Eliminado correctamente'
    end
  end

  private

  def params_user
    params.require(:usuario).permit(:CodigoEmpleado,:NombreCompleto,:Departamento,:Funcion,:Usuario,:password,:Correo,:Estatus,:Tipo)
  end

end
