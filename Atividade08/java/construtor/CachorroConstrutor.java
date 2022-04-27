public class CachorroConstrutor{

	public String nome;
	public int peso;
	public String corOlhos;
	public int idade;

  public CachorroConstrutor(String nome, String corOlhos, int peso){
    this.nome = nome;
    this.peso = peso;
    this.corOlhos = corOlhos;
    this.idade = -1;
  }

  public CachorroConstrutor(String nome, String corOlhos, int peso, int idade){
    this.nome = nome;
    this.peso = peso;
    this.corOlhos = corOlhos;
    this.idade = idade;
  }

	public void apresentacao(){
		System.out.println(
			"Olá, humano! Sou o cachorro " + this.nome + 
			"\nPeso " + this.peso + " Kg" + 
			"\nA cor dos meus olhos é " + this.corOlhos + 
			"\nE tenho " + this.idade + " anos!");
	}
}