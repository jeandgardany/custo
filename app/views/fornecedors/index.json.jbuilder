json.array!(@fornecedors) do |fornecedor|
  json.extract! fornecedor, :id, :nome, :endereco, :vendedor, :telefone
  json.url fornecedor_url(fornecedor, format: :json)
end
