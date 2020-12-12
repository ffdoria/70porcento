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
    def dia_da_semana(dia)
        if dia == 'Mon' || dia == "Segunda"
            return 2
        end
        if dia == 'Tue' || dia == "Terça"
            return 3
        end
        if dia == 'Wed' || dia == "Quarta"
            return 4
        end
        if dia == 'Thu' || dia == "Quinta"
            return 5
        end
        if dia == 'Fri' || dia == "Sexta"
            return 6
        end
        if dia == 'Sat' || dia == "Sabado"
            return 7
        end
        if dia == 'Sun' || dia == "Domingo"
            return 1
        end
    end
    def dia_certo (com,dia,d)
        if d != nil
            if (d -dia) >= 0 
                return com + (d-dia)
            else 
                return com + (7 +d-dia)
            end
        else
            return ''
        end
    end
    def sequencia (d1,d2,d3,h1,h2,h3,dc1,dc2,dc3)
        if d2 == nil && d3 == nil
            return [[d1,h1,dc1]]
        elsif d3 == nil
            if (d1 - d2).to_i > 0
                return [[d2,h2,dc2],[d1,h1,dc1]]
            else 
                return [[d1,h1,dc1],[d2,h2,dc2]]
            end
        else 
            d12 = (d1 - d2).to_i
            d13 = (d1 - d3).to_i
            d23 = (d2 - d3).to_i
            if d12 < 0 && d13 < 0 && d23 < 0
                return [[d1,h1,dc1],[d2,h2,dc2],[d3,h3,dc3]]
            elsif d12 < 0 && d13 < 0 && d23 > 0
                return [[d1,h1,dc1],[d3,h3,dc3],[d2,h2,dc2]]
            elsif d12 > 0 && d13 < 0 && d23 < 0
                return [[d2,h2,dc2],[d1,h1,dc1][d3,h3,dc3]]
            elsif d12 > 0 && d13 > 0 && d23 < 0
                return [[d2,h2,dc2],[d3,h3,dc3],[d1,h1,dc1]]
            elsif d12 < 0 && d13 > 0 && d23 > 0
                return [[d3,h3,dc3],[d1,h1,dc1],[d2,h2,dc2]]
            elsif d12 > 0 && d13 > 0 && d23 > 0
                return [[d3,h3,dc3],[d2,h2,dc2],[d1,h1,dc1]]
            else 
                return "Erro"
            end 
        end
    end
    def gerar_aulas(grade,subject)
        require "date"
        com = grade.comeco 
        dia = dia_da_semana(com.strftime('%a'))
        fim = grade.final_semestre
        d1 = dia_da_semana(subject.dia_semana1)
        d2 = dia_da_semana(subject.dia_semana2)
        d3 = dia_da_semana(subject.dia_semana3)
        dia_comeca = dia_certo(com,dia,d1)
        dia_comeca2 = dia_certo(com,dia,d2)
        dia_comeca3 = dia_certo(com,dia,d3)
        h1 = subject.horario1
        h2 = subject.horario2
        h3 = subject.horario3
        qnz = subject.quinzenal
        if d1 != nil
            aula = subject.aulas.new(data_aul: dia_comeca , horario_aul: h1, compareceu: 'Ainda não teve')
            aula.save
        end 
        if d2 != nil
            aula2 = subject.aulas.new(data_aul: dia_comeca2 , horario_aul: h2, compareceu: 'Ainda não teve')
            aula2.save
        end 
        if d3 != nil
            aula3 = subject.aulas.new(data_aul: dia_comeca3 , horario_aul: h1, compareceu: 'Ainda não teve')
            aula3.save
        end 
    end 
    def func_dias_semanas(subject)
        d1 = subject.dia_semana1 
        d2 = subject.dia_semana2
        d3 = subject.dia_semana3 
        a1 = ""
        a2 = ""
        if subject.dia_semana2 != ''
            a1 = ", "
        end
        if subject.dia_semana3 != ''
            a2 = ", "
        end
        return d1 + a1 + d2 + a2 + d3
    end
end
