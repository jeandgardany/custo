class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.date :data
      t.decimal :valor_bruto, :precision => 5, :scale => 2, :default => 0.00
      t.decimal :valor_venda, :precision => 5, :scale => 2, :default => 0.00
      t.decimal :lucro, :precision => 5, :scale => 2, :default => 0.00
      t.references :despesa, index: true, foreign_key: true
      t.references :quantidade, index: true, foreign_key: true
      t.references :produto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
