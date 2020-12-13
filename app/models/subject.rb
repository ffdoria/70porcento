class Subject < ApplicationRecord
  belongs_to :grade
  has_many :atividades, :dependent => :destroy
  has_many :aulas, :dependent => :destroy
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
