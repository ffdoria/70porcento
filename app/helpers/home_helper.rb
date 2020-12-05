module HomeHelper
    def calc_presenca(subject)
        soma = 0
        foi = 0
        subject.aulas.each do |x|
            if x.compareceu == "Sim"
                foi += 1 
            end
            if x.compareceu == "Não" || x.compareceu == "Sim"
                soma = soma + 1
            end
        end  
        if soma == 0
            return "Sem dados por enquanto"
        else 
            return foi.to_f/soma*100
        end
    end
end
