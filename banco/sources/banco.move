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

}