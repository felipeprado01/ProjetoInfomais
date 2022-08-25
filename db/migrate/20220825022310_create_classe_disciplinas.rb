class CreateClasseDisciplinas < ActiveRecord::Migration[7.0]
  def change
    create_table :classe_disciplinas do |t|
      t.references :sala, null: false, foreign_key: true
      t.references :disciplina, null: false, foreign_key: true
      t.references :professor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
