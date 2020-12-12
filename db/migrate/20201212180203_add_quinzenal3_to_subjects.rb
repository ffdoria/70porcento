class AddQuinzenal3ToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :quinzenal3, :string
  end
end
