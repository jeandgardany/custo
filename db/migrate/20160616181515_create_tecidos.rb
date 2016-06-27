class CreateTecidos < ActiveRecord::Migration
  def change
    create_table :tecidos do |t|
      t.string :nome
      t.decimal :largura, :precision => 4, :scale => 2, :default => 0.00

      t.timestamps null: false
    end
  end
end
