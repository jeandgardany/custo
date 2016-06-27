json.array!(@tecidos) do |tecido|
  json.extract! tecido, :id, :nome, :largura
  json.url tecido_url(tecido, format: :json)
end
