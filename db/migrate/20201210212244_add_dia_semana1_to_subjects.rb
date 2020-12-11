class AddDiaSemana1ToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :dia_semana1, :string
  end
end
