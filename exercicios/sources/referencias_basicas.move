module exercicios::referencias_basicas {
    use std::debug::print;
    
    fun somar_com_referencia(a: &u64, b: &u64): u64 {
        *a + *b
    }
    
    fun dobrar_numero(numero: &mut u64) {
        *numero = *numero * 2;
    }
    
    fun praticar_referencias() {
        let x = 10;
        let y = 20;
        
        let soma = somar_com_referencia(&x, &y);
        print(&soma); 
        
        let mut z = 5;
        dobrar_numero(&mut z);
        print(&z); 
    }
    
}