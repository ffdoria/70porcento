class CalendarioController < ApplicationController
    def start_time(subject, atividades)
            # subject.atividade.each do |x|
            # subject.aulas.each do |x|
        self.my_related_model.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end
end
