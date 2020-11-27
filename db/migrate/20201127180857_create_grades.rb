class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.string :nome
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
