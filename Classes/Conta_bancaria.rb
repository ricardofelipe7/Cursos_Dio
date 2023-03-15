class ContaBancaria 
    def initialize (proprietario, valor_inicial)
        @proprietario = proprietario
        @valor        = valor_inicial
    end

    def transferir(outra_conta, valor)
        #logica de transferencia

        if saldo > valor
            #aceito
            de
        else
            #nao faço nada
        end
    end

    def saldo
        @valor
    end

end
