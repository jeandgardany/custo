class CreateQuantidades < ActiveRecord::Migration
  def change
    create_table :quantidades do |t|
      t.integer :q_corte
      t.decimal :rendimento, :precision => 5, :scale => 2, :default => 0.00
      #t.references :produto, index: true, foreign_key: true
      t.references :compra, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
