class Pneu {
    constructor(pressao) {
        this.pressao = pressao;
    }
    roda() {
        console.log(`Pneu em movimento com pressao ${this.pressao}`);
    }
}
class Carro {
    constructor(p1, p2, p3, p4) {
        this.p1 = p1;
        this.p2 = p2;
        this.p3 = p3;
        this.p4 = p4;
    }
    liga() {
        console.log('Carro ligado');
    }
    desliga() {
        console.log('Carro desligado');
    }
}
let p1 = new Pneu(37);
let p2 = new Pneu(38);
let p3 = new Pneu(40);
let p4 = new Pneu(39);
let carro = new Carro(p1, p2, p3, p4);

carro.p1.roda();
carro.p2.roda();
carro.p3.roda();
carro.p4.roda();

