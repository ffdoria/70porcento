class CreatePresencas < ActiveRecord::Migration[6.0]
  def change
    create_table :presencas do |t|
      t.bool :compareceu
      t.belongs_to :aula, null: false, foreign_key: true

      t.timestamps
    end
  end
end
