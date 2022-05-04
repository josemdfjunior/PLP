class Poupanca {
    constructor(saldo) {
        this.saldo = saldo;
    }
    saque() {
        this.saldo -= 10.0
        console.log(`Novo saldo ${this.saldo}`);
    }
    deposito() {
        this.saldo += 10.0
        console.log(`Novo saldo ${this.saldo}`);
    }
}
class ContaCorrente {
    constructor(saldo) {
        this.saldo = saldo;
    }
    saque() {
        this.saldo -= 100.0
        console.log(`Novo saldo ${this.saldo}`);
    }
    deposito() {
        this.saldo += 100.0
        console.log(`Novo saldo ${this.saldo}`);
    }
}
class Banco {
    constructor() {
        this.pops = [];
        this.cc = [];
    }
    abreContaCorrente() {
        this.cc.push(new ContaCorrente(0.0));
    }
    abrePoupanca() {
        this.pops.push(new Poupanca(300.0));
    }
    falencia() {
        this.pops.splice(0,this.pops.length);
        this.cc.splice(0,this.cc.length);
        this.pops = null;
        this.cc = null;
    }
}

