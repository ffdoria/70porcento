class AddComecoToGrades < ActiveRecord::Migration[6.0]
  def change
    add_column :grades, :comeco, :date
  end
end
