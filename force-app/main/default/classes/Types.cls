public class Types {
    //variaveis
    boolean a;
    Integer b = 1;
    Integer c = 1;
    String nome = 'Milena';
    
    public Types()
    {
        system.debug('Eu sou o construtor');
    }
    public void metodoTypes(){
        a=true;        
        system.debug('Eu sou o metodo');
    	system.debug('eu sou a variavel booleana a = ' + a);
        system.debug('Eu sou as operações basicas entre b e c' + (b+ c));
        system.debug('Eu sou a String' + nome);                
    }    
}