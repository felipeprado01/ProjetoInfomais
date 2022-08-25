class Avaliacao < ApplicationRecord
  belongs_to :disciplina
  belongs_to :sala
  belongs_to :aluno
end
