class CreateDisciplinas < ActiveRecord::Migration[7.0]
  def change
    create_table :disciplinas do |t|
      t.integer :cod
      t.string :nome

      t.timestamps
    end
  end
end
