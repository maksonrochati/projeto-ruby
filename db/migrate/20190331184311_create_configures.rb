class CreateConfigures < ActiveRecord::Migration[5.2]
  def change
    create_table :configures do |t|
      t.integer :ValorDoPonto
      t.integer :MaximoDePontosPorCompra
      t.integer :ValidadeDosPontos
      t.boolean :NumeroDeTelefone
      t.boolean :Cpf
      t.boolean :Email
      t.boolean :DataDeNascimento
      t.boolean :Genero

      t.timestamps
    end
  end
end
