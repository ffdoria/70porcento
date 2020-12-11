class AddComecoSemestreToGrades < ActiveRecord::Migration[6.0]
  def change
    add_column :grades, :comeco_semestre, :date
  end
end
