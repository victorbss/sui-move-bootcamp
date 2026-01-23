module exercicios::variaveis_basicas {
    use std::debug::print;
    use std::string::utf8;
    
    const MINHA_IDADE:u8 = 25;
    
    fun praticar_variaveis() {
        let meu_nome = b"Seu Nome Aqui";
        let contador:u8 = 0;
        let idade = MINHA_IDADE;
        
        print(&utf8(meu_nome));
        print(&contador);
        print(&idade);
    }

    #[test]
    fun teste_variaveis() {
        praticar_variaveis();
    }
}