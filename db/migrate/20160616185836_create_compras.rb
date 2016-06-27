class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.date :data
      t.decimal :valor_kg, :precision => 5, :scale => 2, :default => 0.00
      t.decimal :valor_total, :precision => 6, :scale => 2, :default => 0.00
      t.decimal :peso_total, :precision => 5, :scale => 2, :default => 0.00
      t.string :pagamento
      t.references :tecido, index: true, foreign_key: true
      t.references :fornecedor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
