class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :modelo
      t.string :tamanho
      #t.references :quantidade, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
