json.extract! avaliacao, :id, :disciplina_id, :sala_id, :aluno_id, :data, :nota, :float, :created_at, :updated_at
json.url avaliacao_url(avaliacao, format: :json)
