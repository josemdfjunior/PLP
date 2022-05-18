
import java.util.Random;

public class Weasel {
    static final String alvo = "METHINKS IT IS LIKE A WEASEL";
    static final char[] possibilities = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ".toCharArray();
    static double minimoMutacoes = 0.09;
    static int perfectFitness = alvo.length();
    private static String parent;
    static Random rand = new Random();

    public String getAlvo() {
        return alvo;
    }

    public String getParent() {
        return parent;
    }

    public void setParent(String parent) {
        Weasel.parent = parent;
    }

    public int somaCaracteres(String trial){
        int retVal = 0;
        for(int i = 0;i < trial.length(); i++){
            if (trial.charAt(i) == alvo.charAt(i)) retVal++;
        }
        return retVal;
    }

    public double newMutateRate(){
        return (((double)perfectFitness - somaCaracteres(parent)) / perfectFitness * (1 - minimoMutacoes));
    }

    public String mutacao(String parent, double rate){
        StringBuilder retVal = new StringBuilder();
        for(int i = 0;i < parent.length(); i++){
            retVal.append((rand.nextDouble() <= rate) ?
                    possibilities[rand.nextInt(possibilities.length)] :
                    parent.charAt(i));
        }
        return retVal.toString();
    }
}
