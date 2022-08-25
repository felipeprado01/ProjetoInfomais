class CreateAvaliacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :avaliacaos do |t|
      t.references :disciplina, null: false, foreign_key: true
      t.references :sala, null: false, foreign_key: true
      t.references :aluno, null: false, foreign_key: true
      t.date :data
      t.string :nota
      t.string :float

      t.timestamps
    end
  end
end
