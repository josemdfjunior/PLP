class Vendedor {
    constructor(comissao) {
        this.comissao = comissao;
    }
    vende() {
        console.log('Vendido');
    }
}
class Comprador {
    constructor(verba) {
        this.verba = verba;
    }
    compra() {
        console.log('Comprado');
    }
}
class Produto {
    constructor(preco, tamanho) {
        this.preco = preco;
        this.tamanho = tamanho;
    }
    vendido() {
        console.log('Vendido');
    }
}
class Venda {
    constructor(comprador, venderdor, produto) {
        this.comprador = comprador;
        this.venderdor = venderdor;
        this.produto = produto;
    }
    concretizaVenda() {
        console.log('Venda efetuada');
        this.comprador.verba -= this.produto.preco;
        this.venderdor.comissao += this.produto.preco * 0.1
    }
    cancelaVenda() {
        console.log('Venda cancelada');
    }
}
let vendedor = new Vendedor(0);
let comprador = new Comprador(100.0);
let produto = new Produto(40.0, 5);

let venda = new Venda(comprador, vendedor, produto);

venda.concretizaVenda();

