
public class Evolucao {
    public static void main(String[] args){
        Weasel weasel = new Weasel();

        weasel.setParent(weasel.mutacao(weasel.getAlvo(), 1));
        int iteracao = 0;
        while(!weasel.getAlvo().equals(weasel.getParent())){
            double rate = weasel.newMutateRate();
            iteracao++;
            if(iteracao % 100 == 0){
                System.out.println(iteracao + ": " + weasel.getParent() + 
										", pontos: " + weasel.somaCaracteres(weasel.getParent()) + 
										", rate: " + rate);
            }
            String bestSpawn = null;
            int melhorPontuacao = 0;
            for(int i = 0; i < 100; i++){
                String spawn = weasel.mutacao(weasel.getParent(), rate);
                int pontos = weasel.somaCaracteres(spawn);
                if(pontos > melhorPontuacao){
                    bestSpawn = spawn;
                    melhorPontuacao = pontos;
                }
            }
            if (melhorPontuacao > weasel.somaCaracteres(weasel.getParent())){
                weasel.setParent(bestSpawn);
            } else {
                weasel.setParent(weasel.getParent());
            }

        }
        System.out.println(weasel.getParent() + ", " + iteracao);
    }
}
