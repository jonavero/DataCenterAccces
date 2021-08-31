class CreateSolicituds < ActiveRecord::Migration[5.1]
  def change
    create_table :solicituds do |t|
      t.string :Usuario
      t.string :Departamento
      t.string :Correo
      t.string :Funcion
      t.references :CodigoEmpleado
      t.string :Acompanante
      t.text :Motivo
      t.text :Nota
      t.string :Estatus
      t.date :FechaVisita
      t.datetime :HoraInicial
      t.datetime :HoraFinal

      t.timestamps
    end
  end
end
