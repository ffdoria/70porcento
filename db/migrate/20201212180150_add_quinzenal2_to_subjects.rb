class AddQuinzenal2ToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :quinzenal2, :string
  end
end
