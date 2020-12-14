module AulasHelper

    def dia_Hj()
        require "date"
        hj= Date.today
        return hj
    end

    def orgAulas(aulas)
        aulaOrg=[]
        aulas.each do |aula|
            aulaOrg.push(aula)
        end
        aulaOrg=aulaOrg.sort_by(data_aul)
        return aulaOrg
    end
end
