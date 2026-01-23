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
}