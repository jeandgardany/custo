json.array!(@despesas) do |despesa|
  json.extract! despesa, :id, :corte, :costura, :pintura, :bordado, :diversos, :produto_id
  json.url despesa_url(despesa, format: :json)
end
