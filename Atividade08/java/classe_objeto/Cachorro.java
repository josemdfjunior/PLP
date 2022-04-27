public class Cachorro{

	public String nome;
	public int peso;
	public String corOlhos;
	public int idade;

	public void latir(){
		System.out.println("AU AU!");
	}

	public void comer(){
		System.out.println("NHAMY NHAMY!");
	}

	public void apresentacao(){
		System.out.println(
			"Olá, humano! Sou o cachorro " + this.nome + 
			"\nPeso " + this.peso + " Kg" + 
			"\nA cor dos meus olhos é " + this.corOlhos + 
			"\nE tenho " + this.idade + " anos!");
	}
}