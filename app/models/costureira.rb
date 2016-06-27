class Costureira < ActiveRecord::Base
  belongs_to :produto
  belongs_to :quantidade
end
