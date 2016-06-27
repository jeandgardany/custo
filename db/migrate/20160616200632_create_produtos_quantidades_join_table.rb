class CreateProdutosQuantidadesJoinTable < ActiveRecord::Migration
  def change
  	create_table :produtos_quantidades, id: false do |t|
  		t.integer :produto_id
  		t.integer :quantidade_id
	end
  end
end