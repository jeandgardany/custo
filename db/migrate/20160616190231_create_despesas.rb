class CreateDespesas < ActiveRecord::Migration
  def change
    create_table :despesas do |t|
      t.decimal :total, :precision => 5, :scale => 2, :default => 0.00
      t.decimal :corte, :precision => 5, :scale => 2, :default => 0.00
      t.decimal :costura, :precision => 5, :scale => 2, :default => 0.00
      t.decimal :pintura, :precision => 5, :scale => 2, :default => 0.00
      t.decimal :bordado, :precision => 5, :scale => 2, :default => 0.00
      t.decimal :diversos, :precision => 5, :scale => 2, :default => 0.00
      t.references :produto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
