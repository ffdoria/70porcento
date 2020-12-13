class Grade < ApplicationRecord
  belongs_to :user
  has_many :subjects, :dependent => :destroy
  has_many :aulas, through: :subjects

end
