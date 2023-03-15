require "Contabancaria"

conta_ricardo = ContaBancaria.new('ricardo', 100)
conta_pessoa2 = ContaBancaria.new('pessoa2', 200)

conta_cadu.transferir(conta_pessoa2, 50)

p conta_ricardo.saldo  #-50
p conta_pessoa2.saldo  #+250