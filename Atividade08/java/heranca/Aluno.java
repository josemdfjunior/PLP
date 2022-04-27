public class Aluno extends Pessoa{
  public String matricula;

  public void apresentacao(){
		System.out.println(
			"Olá! Meu nome é " + super.nome + 
			"\nIdade: " + super.idade + " anos" + 
			"\nMatricula: " + this.matricula);
	}
}