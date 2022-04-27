public class Poupanca{
  float saldo;
  void saque(){
    System.out.println("Novo saldo...");
  }
  void deposito(){
    System.out.println("Novo saldo...");
  }
}

public class ContaCorrente{
  float saldo;
  void saque(){
    System.out.println("Novo saldo...");
  }
  void deposito(){
    System.out.println("Novo saldo...");
  }
}

public class Banco{
  Poupanca[] pops;
  ContaCorrente[] cc;
  int numConta, numPoupanca;
  void iniciaBanco(){
    pops = new Poupanca[100];
    cc = new ContaCorrente[100];
    numConta = 1;
    numPoupanca = 1;
  }
  void falencia(){
    for(int i = 0; i < 100; i++){
      pops[i] = null;
      cc[i] = null;
    }
  }
}