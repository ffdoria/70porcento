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
    def gerar_aulas(subject)
        aula = subject.aulas.new(data_aul: '14/07/2020', horario_aul: '15:20', compareceu: 'Sim')
        if aula.save
            'Preenchimento das aulas efetuado com sucesso'
        else
            'Ocorreu um erro na geração automatica'
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
    def Atv_calend(user, date)
        atv=[]
        user.grades.each do |x|
            x.subjects.each do |y|
                y.atividades.each do |z|
                    if z.data_at == date
                       atv.push(z.tipo)
                    end
                end
            end
        end  
        return atv
    end
    
end
