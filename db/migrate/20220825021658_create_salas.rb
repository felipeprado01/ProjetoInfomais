class CreateSalas < ActiveRecord::Migration[7.0]
  def change
    create_table :salas do |t|
      t.integer :cod
      t.string :turma

      t.timestamps
    end
  end
end
