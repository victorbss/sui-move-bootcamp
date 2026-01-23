/*
/// Module: banco
module banco::banco;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

module banco::conta {
    use std::debug::print;
    use std::string::utf8;
    
    fun consultar_saldo(saldo: &u64) {
        print(&utf8(b"Saldo atual:"));
        print(saldo);
    }

    fun depositar(saldo: &mut u64, valor: u64) {
        print(&utf8(b"Depositando:"));
        print(&valor);
        *saldo = *saldo + valor;
    }

    fun sacar(saldo: &mut u64, valor: u64) {
        print(&utf8(b"Sacando:"));
        print(&valor);
        if (*saldo >= valor) {
            *saldo = *saldo - valor;
            print(&utf8(b"Saque realizado"));
        } else {
            print(&utf8(b"Saldo insuficiente"));
        }
    }

    fun simular_conta_bancaria() {
        let mut meu_saldo = 1000; 
        
        print(&utf8(b"=== CONTA BANCARIA ==="));
        
        consultar_saldo(&meu_saldo);
        
        depositar(&mut meu_saldo, 500); 
        consultar_saldo(&meu_saldo);
        
        sacar(&mut meu_saldo, 300); 
        consultar_saldo(&meu_saldo);
        
        sacar(&mut meu_saldo, 2000); 
        consultar_saldo(&meu_saldo);
    }

}