json.array!(@costureiras) do |costureira|
  json.extract! costureira, :id, :data, :nome, :valor_pago, :q_produto, :obs, :produto_id, :quantidade_id
  json.url costureira_url(costureira, format: :json)
end
