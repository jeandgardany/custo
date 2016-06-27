json.array!(@vendas) do |venda|
  json.extract! venda, :id, :valor_bruto, :valor_venda, :lucro, :despesa_id, :quantidade_id
  json.url venda_url(venda, format: :json)
end
