module caixa::calculadora {
    use std::debug::print;
    use std::string::utf8;
    
    fun somar(a: &u64, b: &u64): u64 {
        *a + *b
    }

}