class AddDiaSemana3ToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :dia_semana3, :string
  end
end
