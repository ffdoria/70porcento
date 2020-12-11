class AddFinalSemestreToGrades < ActiveRecord::Migration[6.0]
  def change
    add_column :grades, :final_semestre, :date
  end
end
