class AddHorario2ToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :horario2, :time
  end
end
