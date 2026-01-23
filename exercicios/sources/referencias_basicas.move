module exercicios::referencias_basicas {
    use std::debug::print;
    
    fun somar_com_referencia(a: &u64, b: &u64): u64 {
        *a + *b
    }

    
}