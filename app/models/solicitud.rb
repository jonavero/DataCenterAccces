class Solicitud < ApplicationRecord
  belongs_to :usuario, foreign_key: 'CodigoEmpleado_id',optional: true

  validates :Correo,:Acompanante,:Motivo,:FechaVisita, presence: {message: 'No puede dejarse vacio'}
  validates :CodigoEmpleado_id, presence: {message:'No puede dejarse vacio'}
  validates :Usuario,:Estatus,:Departamento,:Funcion,presence: {message:'No puede dejarse vacio'}


end
