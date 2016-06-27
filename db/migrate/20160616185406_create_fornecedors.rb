class CreateFornecedors < ActiveRecord::Migration
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :endereco
      t.string :vendedor
      t.integer :telefone

      t.timestamps null: false
    end
  end
end
