public class Pneu {
  int pressao;

  void roda(){
    System.out.println("Pneu em movimento");
  }
}

public class Carro {
  Pneu p1;
  Pneu p2;
  Pneu p3;
  Pneu p4;

  void liga(){
    System.out.println("Carro ligado");
  }

  void desliga(){
    System.out.println("Carro desligado");
  }
}