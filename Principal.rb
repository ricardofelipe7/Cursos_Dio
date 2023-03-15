require './Classes/Conta_bancaria'
require './Classes/Conta_com_taxa'

conta_ricardo = ContaComTaxa.new('ricardo', 100)
conta_pessoa2 = ContaBancaria.new('pessoa2', 200)

conta_ricardo.transferir(conta_pessoa2, 50)

p conta_ricardo.saldo  #-50
p conta_pessoa2.saldo  #+250

#caso de teste de conta sem saldo
begin
conta_ricardo.transferir(conta_pessoa2, 60) #falhar
rescue StandardError => meu_erro
    p "Não foi possivel transferir: #{meu_erro.message}"
end

p 'conta ricardo'
p conta_ricardo.saldo #50

p 'conta pessoa 2'
p conta_pessoa2.saldo #250