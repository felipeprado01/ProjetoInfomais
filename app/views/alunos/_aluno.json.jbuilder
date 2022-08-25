json.extract! aluno, :id, :cod, :nome, :idade, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
