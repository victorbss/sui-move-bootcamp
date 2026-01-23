module caixa::calculadora {
    use std::debug::print;
    use std::string::utf8;
    
    fun somar(a: &u64, b: &u64): u64 {
        *a + *b
    }

    fun subtrair(a: &u64, b: &u64): u64 {
        if (*a >= *b) {
            *a - *b
        } else {
            0 
        }
    }

    fun multiplicar(a: &u64, b: &u64): u64 {
        *a * *b
    }

}