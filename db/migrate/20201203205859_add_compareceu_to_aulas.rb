class AddCompareceuToAulas < ActiveRecord::Migration[6.0]
  def change
    add_column :aulas, :compareceu, :string
  end
end
