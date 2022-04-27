public class TesteCachorro {

	public static void main(String[] args) {
		Cachorro cachorro1 = new Cachorro();
		cachorro1.nome = "Pluto";
		cachorro1.corOlhos = "azuis";
		cachorro1.peso = 53;
		cachorro1.idade = 4;
		cachorro1.apresentacao();

		Cachorro cachorro2 = new Cachorro();
		cachorro2.nome = "Rex";
		cachorro2.corOlhos = "amarelo";
		cachorro2.peso = 22;
		cachorro2.idade = 3;
		cachorro2.apresentacao();

		Cachorro cachorro3 = new Cachorro();
		cachorro3.nome = "Bob";
		cachorro3.corOlhos = "marrom";
		cachorro3.peso = 13;
		cachorro3.idade = 4;
		cachorro3.apresentacao();
	}

}