class CreateAulas < ActiveRecord::Migration[6.0]
  def change
    create_table :aulas do |t|
      t.date :data_aul
      t.time :horario_aul
      t.belongs_to :subject, null: false, foreign_key: true
      t.timestamps
      t.string :compareceu
    end
  end
end