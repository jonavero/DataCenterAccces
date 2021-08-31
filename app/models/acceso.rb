class Acceso < ApplicationRecord
  validates :Correo, presence: {message: 'No puede dejarse vacio'},email: {message:'Inavlido, Utilizar @/gmail/hotmail/labreferencia/.com, ejemplo: example@labreferencia.com'}
  validates :CodigoEmpleado,:Nombre,:Empresa, presence: {message:'No puede dejarse vacio'}
  validates :Companero, :Mensaje, presence: {message:'No puede dejarse vacio'}
  validates :Departamento,:Funcion,presence: {message:'No puede dejarse vacio'}

end
