class CreateAccesos < ActiveRecord::Migration[5.1]
  def change
    create_table :accesos do |t|

      t.string :Nombre
      t.integer :CodigoEmpleado
      t.string :Correo
      t.string :Departamento
      t.string :Funcion
      t.text   :Companero
      t.text :Mensaje

      t.timestamps
    end
  end
end
