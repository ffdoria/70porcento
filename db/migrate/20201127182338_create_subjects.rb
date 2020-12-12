class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :nome
      t.string :codigo
      t.string :creditos
      t.float :presenca
      t.string :dia_semana1
      t.time :horario1
      t.belongs_to :grade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
