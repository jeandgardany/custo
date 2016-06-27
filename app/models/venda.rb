class Venda < ActiveRecord::Base
  belongs_to :despesa
  belongs_to :quantidade
  belongs_to :produto
  has_one :compra
  accepts_nested_attributes_for :despesa, :produto, :quantidade, :compra
end
