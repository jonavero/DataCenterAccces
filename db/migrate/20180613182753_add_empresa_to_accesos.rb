class AddEmpresaToAccesos < ActiveRecord::Migration[5.1]
  def change
    add_column :accesos, :Empresa, :string
    add_column :accesos, :Telefono, :string

  end
end
