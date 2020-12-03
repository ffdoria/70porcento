class Subject < ApplicationRecord
  belongs_to :grade
  has_many :atividades
  has_many :aulas
end
