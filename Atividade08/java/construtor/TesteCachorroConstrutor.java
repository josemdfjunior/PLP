public class TesteCachorroConstrutor {

	public static void main(String[] args) {
		CachorroConstrutor cachorro1 = new CachorroConstrutor("Pluto", "azuis", 53);
		cachorro1.apresentacao();

		CachorroConstrutor cachorro2 = new CachorroConstrutor("Rex", "amarelo", 22, 3);
		cachorro2.apresentacao();

		CachorroConstrutor cachorro3 = new CachorroConstrutor("Bob", "marrom", 13, 4);
		cachorro3.apresentacao();
	}
}