class AddHorario3ToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :horario3,  :time
  end
end
