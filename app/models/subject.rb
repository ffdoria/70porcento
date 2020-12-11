class Subject < ApplicationRecord
  belongs_to :grade
  has_many :atividades
  has_many :aulas
  enum dia_semana: {
    "Segunda" => "Segunda",
    "Terça" => "Terça",
    "Quarta" => "Quarta",
    "Quinta" => "Quinta",
    "Sexta" => "Sexta",
    "Sabado" => "Sabado",
  }
  enum quinzenal: {
    "Sim" => "Sim",
    "Não" => "Não"
  }
end
