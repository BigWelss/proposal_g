class CreateProjetos < ActiveRecord::Migration[5.0]
  def change
    create_table :projetos do |t|
      t.string :nome
      t.string :codigo_base
      t.integer :revisao
      t.date :data
      t.string :usuario
      t.text :observacoes
      t.integer :numero_habitantes
      t.string :localizacao
      t.integer :tipo_projeto

      t.timestamps
    end
  end
end
