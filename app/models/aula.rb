class Aula < ApplicationRecord
  belongs_to :subject
  enum compareceu: {
    "Sim" => "Sim",
    "Não" => "Não",
    "Ainda não teve" => "Ainda não teve"
  }
end
