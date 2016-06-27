class CreateCostureiras < ActiveRecord::Migration
  def change
    create_table :costureiras do |t|
      t.date :data
      t.string :nome
      t.decimal :valor_pago
      t.integer :q_produto
      t.text :obs
      t.references :produto, index: true, foreign_key: true
      t.references :quantidade, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
