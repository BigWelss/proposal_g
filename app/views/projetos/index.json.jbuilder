json.array!(@projetos) do |projeto|
  json.extract! projeto, :id, :nome, :codigo_base, :revisao, :data, :usuario, :observacoes, :numero_habitantes, :localizacao, :tipo_projeto
  json.url projeto_url(projeto, format: :json)
end
