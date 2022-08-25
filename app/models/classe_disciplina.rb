class ClasseDisciplina < ApplicationRecord
  belongs_to :sala
  belongs_to :disciplina
  belongs_to :professor
end
