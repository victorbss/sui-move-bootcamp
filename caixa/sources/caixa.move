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

    fun dividir(a: &u64, b: &u64): u64 {
        if (*b > 0) {
            *a / *b
        } else {
            0 
        }
    }

    fun aplicar_desconto(valor: &mut u64, percentual_desconto: u64) {
        let desconto = (*valor * percentual_desconto) / 100;
        *valor = *valor - desconto;
    }

    fun teste_calculadora() {
        let numero1 = 20;
        let numero2 = 5;
        
        print(&utf8(b"=== CALCULADORA ==="));
        print(&utf8(b"Numero 1:"));
        print(&numero1);
        print(&utf8(b"Numero 2:"));
        print(&numero2);
        
        let resultado_soma = somar(&numero1, &numero2);
        print(&utf8(b"Soma:"));
        print(&resultado_soma);
        
        let resultado_subtracao = subtrair(&numero1, &numero2);
        print(&utf8(b"Subtracao:"));
        print(&resultado_subtracao);
        
        let resultado_multiplicacao = multiplicar(&numero1, &numero2);
        print(&utf8(b"Multiplicacao:"));
        print(&resultado_multiplicacao);
        
        let resultado_divisao = dividir(&numero1, &numero2);
        print(&utf8(b"Divisao:"));
        print(&resultado_divisao);
        
        let mut preco = 100;
        print(&utf8(b"Preco original:"));
        print(&preco);
        
        aplicar_desconto(&mut preco, 20);
        print(&utf8(b"Preco com desconto:"));
        print(&preco);
    }

    #[test]
    fun teste_matematica() {
        teste_calculadora();
    }

}