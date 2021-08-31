class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|

      t.integer :CodigoEmpleado
      t.string :NombreCompleto
      t.string :Departamento
      t.string :Funcion
      t.string :Usuario
      t.string :Contrasena
      t.string :Correo
      t.string :Estatus
      t.string :Tipo
      t.string :password_digest

      t.timestamps
    end
  end
end
