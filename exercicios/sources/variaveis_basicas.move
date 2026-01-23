/*
/// Module: exercicios
module exercicios::exercicios;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

module exercicios::variaveis_basicas {
    use std::debug::print;
    use std::string::utf8;
    
    const MINHA_IDADE: u8 = 25;
    
    fun praticar_variaveis() {
        let meu_nome = b"Seu Nome Aqui";
        let contador = 0;
        
        print(&utf8(meu_nome));
        print(&contador);
        print(&MINHA_IDADE);
    }
    
    #[test]
    fun teste_variaveis() {
        praticar_variaveis();
    }
}