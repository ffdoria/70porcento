class AddQuinzenalToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :quinzenal, :string
  end
end
