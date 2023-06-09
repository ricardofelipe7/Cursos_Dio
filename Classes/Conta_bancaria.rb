class ContaBancaria 
    def initialize (proprietario, valor_inicial)
        @proprietario = proprietario
        @valor        = valor_inicial
    end

    def transferir(outra_conta, valor)
        #logica de transferencia

        if saldo > valor
            #aceito
            debitar(valor)
            outra_conta.depositar(valor)
        else
           raise 'Não consegui transferir! Saldo insuficiente.'
        end
    end

    def saldo
        @valor
    end

        private 
    def debitar(valor_para_debitar)
        @valor -= valor_para_debitar
    end
        protected
    def depositar(valor_para_depositar)
        @valor += valor_para_depositar
    end
end
