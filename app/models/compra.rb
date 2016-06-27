class Compra < ActiveRecord::Base
  belongs_to :tecido
  belongs_to :fornecedor

  accepts_nested_attributes_for :tecido, :fornecedor
end
