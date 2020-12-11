class AddDiaSemana2ToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :dia_semana2, :string
  end
end
