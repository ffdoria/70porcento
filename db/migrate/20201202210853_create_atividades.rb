class CreateAtividades < ActiveRecord::Migration[6.0]
  def change
    create_table :atividades do |t|
      t.date :data_at
      t.time :horario_at
      t.string :tipo
      t.string :comentarios
      t.belongs_to :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
