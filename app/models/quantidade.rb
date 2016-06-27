class Quantidade < ActiveRecord::Base
  has_and_belongs_to_many :produtos
  belongs_to :compra

  accepts_nested_attributes_for :compra, :produtos
end
