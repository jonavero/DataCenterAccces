class SessionsController < ApplicationController
  def new
    @Acceso = Acceso.new

    @AccesosEmergente = if params[:CodigoEmpleado]
                  Usuario.where('CodigoEmpleado LIKE ?', "%#{params[:CodigoEmpleado]}%")
                else

                        end

    @solicitudes = Solicitud.where("CodigoEmpleado_id = ? and Estatus = 'Aceptada'",params[:CodigoEmpleado])

  end
  def create
    user = Usuario.find_by_Correo(params[:Correo])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.Tipo =='Admin'
        session[:user_id] = user.id
        redirect_to '/inicio'

        elsif user.Tipo =='User'
          session[:user_id] = user.id
          redirect_to '/user/inicio'

      else
        flash.now.alert = "Invalid email or password"
        redirect_to login_path, flash: {alert: "Usuario Invalido"}

        # redirect_to empleado_path(session[:user_id])
      end

    else
      redirect_to login_path, flash: {alert: "Contraseña o Usuario Invalido"}
      #render 'sessions/new'
    end


  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, flash: {alert: "Session Finalizada"}
  end
end
