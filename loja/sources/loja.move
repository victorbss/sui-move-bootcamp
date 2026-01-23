module loja::produtos {
    use std::debug::print;
    use std::string::utf8;
    
    const PRECO_NOTEBOOK: u64 = 250000; 
    const PRECO_MOUSE: u64 = 5000;      
    const PRECO_TECLADO: u64 = 15000;   

    fun calcular_total_compra() {
        let qtd_notebook = 1;
        let qtd_mouse = 2;
        let qtd_teclado = 1;
        
        let subtotal_notebook = PRECO_NOTEBOOK * qtd_notebook;
        let subtotal_mouse = PRECO_MOUSE * qtd_mouse;
        let subtotal_teclado = PRECO_TECLADO * qtd_teclado;
        
        let total = subtotal_notebook + subtotal_mouse + subtotal_teclado;
        
        print(&utf8(b"=== NOTA FISCAL ==="));
        print(&subtotal_notebook);  
        print(&subtotal_mouse);     
        print(&subtotal_teclado);   
        print(&utf8(b"Total:"));
        print(&total);              
    }
}