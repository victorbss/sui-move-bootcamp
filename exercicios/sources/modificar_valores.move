module exercicios::modificar_valores {
    use std::debug::print;
    
    fun contador_simples() {
        let mut contador:u8 = 0;
        print(&contador); 
        
        contador = contador + 1;
        print(&contador); 
        
        contador = contador + 5;
        print(&contador); 
    }

    #[test]
    fun teste_contador() {
        contador_simples();
    }
}