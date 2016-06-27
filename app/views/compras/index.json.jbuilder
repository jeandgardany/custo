json.array!(@compras) do |compra|
  json.extract! compra, :id, :valor_kg, :valor_total, :peso_total, :tecido_id, :fornecedor_id
  json.url compra_url(compra, format: :json)
end
