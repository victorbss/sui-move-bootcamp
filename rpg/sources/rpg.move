module rpg::inventario {
    use std::debug::print;
    use std::string::utf8;
    
    const LIMITE_ITENS: u64 = 10;

    fun adicionar_item(quantidade_atual: &mut u64, novos_itens: u64) {
        let novo_total = *quantidade_atual + novos_itens;
        if (novo_total <= LIMITE_ITENS) {
            *quantidade_atual = novo_total;
            print(&utf8(b"Itens adicionados com sucesso"));
        } else {
            print(&utf8(b"Inventario cheio! Nao foi possivel adicionar"));
        }
    }

    fun usar_item(quantidade_atual: &mut u64, itens_usados: u64) {
        if (*quantidade_atual >= itens_usados) {
            *quantidade_atual = *quantidade_atual - itens_usados;
            print(&utf8(b"Itens usados"));
        } else {
            print(&utf8(b"Nao ha itens suficientes"));
        }
    }

    fun verificar_inventario(pocoes: &u64, espadas: &u64, escudos: &u64) {
        print(&utf8(b"=== INVENTARIO ==="));
        print(&utf8(b"Pocoes:"));
        print(pocoes);
        print(&utf8(b"Espadas:"));
        print(espadas);
        print(&utf8(b"Escudos:"));
        print(escudos);
        
        let total_itens = *pocoes + *espadas + *escudos;
        print(&utf8(b"Total de itens:"));
        print(&total_itens);
        
        let espacos_livres = LIMITE_ITENS - total_itens;
        print(&utf8(b"Espacos livres:"));
        print(&espacos_livres);
    }
}