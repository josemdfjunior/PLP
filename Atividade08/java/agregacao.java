public class Vendedor{
  float comissao;

  void vende(){
    System.out.println("Vendido!");
  }
}

public class Comprador{
  float verba;

  void compra(){
    System.out.println("Comprado!");
  }
}

public class Produto{
  float preco;
  int tamanho;

  void vende(){
    System.out.println("Vendido!");
  }
}

public class Venda{
  Comprador c;
  Vendedor v;
  Produto p;

  void concretizaVenda(){
    System.out.println("Venda efetuada!");
    c.verba -= p.preco;
    v.comissao += p.preco * 0.1f;
    p.vendido();
  }
}