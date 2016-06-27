json.array!(@quantidades) do |quantidade|
  json.extract! quantidade, :id, :q_corte, :rendimento, :produto_id, :compra_id
  json.url quantidade_url(quantidade, format: :json)
end
