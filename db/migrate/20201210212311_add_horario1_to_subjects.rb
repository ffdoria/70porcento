class AddHorario1ToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :horario1, :time
  end
end
